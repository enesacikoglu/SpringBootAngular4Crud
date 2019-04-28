import { Injectable, Inject } from "@angular/core";
import { Observable, ReplaySubject, Subject } from "rxjs";
import { ApiRequestService } from "./api-request.service";
import { TranslateService } from "./translate.service";
import { HttpParams } from "@angular/common/http";

@Injectable()
export class OrderService {
    constructor(
        private apiRequest: ApiRequestService,
        private translate: TranslateService
    ) {}


    getOrderInfo(page?: number, size?: number): Observable<any> {
       
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
        let orderListSubject = new Subject<any>(); 
        this.apiRequest.get("api/orders", params).subscribe(jsonResp => {
            let returnObj = jsonResp.items.map(function(v, i, a) {
                let newRow = Object.assign({}, v, {
                    orderDate: me.translate.getDateString(v.orderDate),
                    paidDate: me.translate.getDateString(v.paidDate),
                    shippedDate: me.translate.getDateString(v.shippedDate)
                });
                return newRow;
            });
            orderListSubject.next(returnObj); 
        });
        return orderListSubject;
    }

 
    getOrderDetails(orderId: number): Observable<any> {
      
        let me = this;
        let params: HttpParams = new HttpParams();
        if (orderId) {
            params = params.append("orderid", orderId.toString());
        }
        let orderDetailSubject = new Subject<any>(); 
        this.apiRequest.get("api/order-details", params).subscribe(jsonResp => {
            let returnObj = jsonResp.items.map(function(v, i, a) {
                let newRow = Object.assign({}, v, {
                    orderDate: me.translate.getDateString(v.orderDate),
                    paidDate: me.translate.getDateString(v.paidDate),
                    shippedDate: me.translate.getDateString(v.shippedDate)
                });
                return newRow;
            });
            orderDetailSubject.next(returnObj); 
        });

        return orderDetailSubject;
    }

    getOrderStats(field: string): Observable<any> {
        return this.apiRequest.get("api/order-stats?type=" + field);
    }
}
