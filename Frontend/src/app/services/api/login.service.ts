import { Injectable, Inject } from "@angular/core";
import { Router } from "@angular/router";

import { Observable, Subject, BehaviorSubject } from "rxjs";
import "rxjs/add/operator/map";
import "rxjs/add/operator/catch";
import { UserInfoService, LoginInfoInStorage } from "../user-info.service";
import { ApiRequestService } from "./api-request.service";

export interface LoginRequestParam {
    username: string;
    password: string;
}

@Injectable()
export class LoginService {
    public landingPage: string = "/home/dashboard/order";
    constructor(
        private router: Router,
        private userInfoService: UserInfoService,
        private apiRequest: ApiRequestService
    ) {}

    checkLogin(username: string, password: string): Observable<any> {
        let me = this;

        let loginDataSubject: BehaviorSubject<any> = new BehaviorSubject<any>(
            []
        ); 
        let loginInfoReturn: LoginInfoInStorage; 

        this.apiRequest.get("api/user/checkLogin").subscribe(
            jsonResp => {
                console.log(jsonResp);
                if (
                    jsonResp !== undefined &&
                    jsonResp !== null &&
                    jsonResp.operationStatus === "SUCCESS"
                ) {
               
                    loginInfoReturn = {
                        success: true,
                        message: jsonResp.operationMessage,
                        landingPage: this.landingPage
                    };

               
                    this.userInfoService.storeUserInfo(
                        JSON.stringify(`${username}:${password}`)
                    );
                } else {
                    
                    loginInfoReturn = {
                        success: false,
                        message: jsonResp.msgDesc,
                        landingPage: "/login"
                    };
                }
                loginDataSubject.next(loginInfoReturn);
            },
            err => {
                loginInfoReturn = {
                    success: false,
                    message:
                        err.url +
                        " >>> " +
                        err.statusText +
                        "[" +
                        err.status +
                        "]",
                    landingPage: "/login"
                };
            }
        );

        return loginDataSubject;
    }

    logout(navigatetoLogout = true): void {

        this.userInfoService.removeUserInfo();
        if (navigatetoLogout) {
            this.router.navigate(["logout"]);
        }
    }
}
