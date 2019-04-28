import { Injectable } from "@angular/core";

export interface UserInStorage {
    userId: string;
    email: string;
    displayName: string;
    token: string;
}

export interface LoginInfoInStorage {
    success: boolean;
    message: string;
    landingPage: string;
    user?: UserInStorage;
}

@Injectable()
export class UserInfoService {
    public currentUserKey: string = "currentUser";
    public storage: Storage = sessionStorage; 

    constructor() {}

    storeUserInfo(userInfoString: string) {
        this.storage.setItem(this.currentUserKey, userInfoString);
    }


    removeUserInfo() {
        this.storage.removeItem(this.currentUserKey);
    }

   
    getUserInfo(): string | null {
        try {
            let userInfoString: string = this.storage.getItem(
                this.currentUserKey
            );
            return userInfoString;
        } catch (e) {
            return null;
        }
    }

    isLoggedIn(): boolean {
        return this.storage.getItem(this.currentUserKey) ? true : false;
    }


}
