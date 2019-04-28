import { Component, OnInit } from "@angular/core";
import { BookService } from "../../services/api/book.service";
import { Router } from "@angular/router";
import { NgxChartsModule } from "@swimlane/ngx-charts";

@Component({
    selector: "s-book_stats-pg",
    templateUrl: "./book_stats.component.html",
    styleUrls: ["./book_stats.scss"]
})
export class BookStatsComponent {
    public bookByQuantityData = [];
    public barColorScheme = { domain: ["#007cbb"] };

    constructor(
        private router: Router,
        private bookService: BookService
    ) {}
    ngOnInit() {
        var me = this;
        this.getPageData();
    }

    getPageData() {
        var me = this;
        me.bookService
            .getBookStatsByQuantityOrdered()
            .subscribe(function(countryData) {
                console.log(countryData);
                me.bookByQuantityData = countryData.items;
                console.log("Received Orders By Country");
            });
    }
}
