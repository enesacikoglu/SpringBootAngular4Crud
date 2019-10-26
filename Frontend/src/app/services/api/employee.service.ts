import { Injectable, Inject } from '@angular/core';
import { Observable, ReplaySubject, Subject } from 'rxjs';
import { ApiRequestService } from './api-request.service';
import { TranslateService } from './translate.service';
import { HttpParams} from "@angular/common/http";

@Injectable()
export class EmployeeService {
    constructor(
        private apiRequest: ApiRequestService,
        private translate:TranslateService
    ) {}

    getEmployees(page?:number, size?:number): Observable<any> {
        let me = this;
        let params: HttpParams = new HttpParams();
        params = params.append('page', typeof page === "number"? page.toString():"0");
        params = params.append('size', typeof size === "number"? size.toString():"1000");
        return this.apiRequest.get('api/employees',params);
    }

}
