import { Injectable, Inject } from "@angular/core";
import { Observable, ReplaySubject, Subject } from "rxjs";
import { TranslateService } from "./translate.service";
import { ApiRequestService } from "./api-request.service";
import { HttpParams } from "@angular/common/http";

@Injectable()
export class BookService {
    constructor(
        private apiRequest: ApiRequestService,
        private translate: TranslateService
    ) {}

    getBooks(page?: number, size?: number): Observable<any> {
        let me = this;
        let params: HttpParams = new HttpParams();
        params = params.append(
            "page",
            typeof page === "number" ? page.toString() : "0"
        );
        params = params.append(
            "size",
            typeof size === "number" ? size.toString() : "1000"
        );

        let bookList = new Subject<any>(); // Will use this subject to emit data that we want
        this.apiRequest.get("api/books", params).subscribe(jsonResp => {
            let returnObj = jsonResp.items.map(function(v, i, a) {
                let newRow = Object.assign({}, v, {
                    listPrice: me.translate.getCurrencyString(v.listPrice),
                    standardCost: me.translate.getCurrencyString(v.standardCost)
                });
                return newRow;
            });
            bookList.next(returnObj); // incidentList is a Subject and emits an event thats being listened to by the components
        });

        return bookList;
    }

    getBookStatsByQuantityOrdered(): Observable<any> {
        return this.apiRequest.get("api/book-stats-by-quantity");
    }
}
