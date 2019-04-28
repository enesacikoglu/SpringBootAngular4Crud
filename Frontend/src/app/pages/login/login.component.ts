import { Component, OnInit } from "@angular/core";
import { LoginService } from "../../services/api/login.service";
import { Router } from "@angular/router";
import { UserInfoService } from "app/services/user-info.service";

@Component({
    selector: "s-login-pg",
    templateUrl: "./login.component.html",
    styleUrls: ["./login.scss"]
})
export class LoginComponent implements OnInit {
    model: any = {};
    errMsg: string = "";
    constructor(
        private router: Router,
        private loginService: LoginService,
        private userInfoService: UserInfoService
    ) {}

    ngOnInit() {
        this.loginService.logout(false);
    }

    login() {
        this.userInfoService.storeUserInfo(
            `${this.model.username}:${this.model.password}`
        );
        this.loginService
            .checkLogin(this.model.username, this.model.password)
            .subscribe(
                resp => {
                    if (!resp.success) {
                        this.errMsg = "Username or password is incorrect";
                        return;
                    }
                    this.router.navigate([resp.landingPage]);
                },
                errResponse => {
                    switch (errResponse.status) {
                        case 401:
                            this.errMsg = "Username or password is incorrect";
                            break;
                        case 404:
                            this.errMsg = "Service not found";
                        case 408:
                            this.errMsg = "Request Timedout";
                        case 500:
                            this.errMsg = "Internal Server Error";
                        default:
                            this.errMsg = "Server Error";
                    }
                }
            );
    }

    onSignUp() {
        this.router.navigate(["signup"]);
    }
}
