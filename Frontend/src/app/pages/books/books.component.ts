import { Component, OnInit, TemplateRef, ViewChild } from "@angular/core";
import { BookService } from "../../services/api/book.service";
import { Router } from "@angular/router";

@Component({
    selector: "s-books-pg",
    templateUrl: "./books.component.html",
    styleUrls: ["./books.scss"]
})
export class BooksComponent implements OnInit {
    @ViewChild("bookDiscontinuedTpl") bookDiscontinuedTpl: TemplateRef<
        any
    >;

    //ngx-Datatable Variables
    columns: any[];
    rows: any[];

    constructor(
        private router: Router,
        private bookService: BookService
    ) {}
    ngOnInit() {
        var me = this;
        me.getPolicyData();
        this.columns = [
            { prop: "bookCode", name: "Code", width: 60 },
            { prop: "bookName", name: "Name", width: 200 },
            { prop: "standardCost", name: "Standard Cost", width: 100 },
            { prop: "listPrice", name: "List Price", width: 100 },
            { prop: "category", name: "Category", width: 100 },
            { prop: "targetLevel", name: "Target Level", width: 100 },
            { prop: "reorderLevel", name: "Reorder Level", width: 100 },
            { prop: "minimumReorderQuantity", name: "Min Order", width: 100 },
            {
                prop: "discontinued",
                name: "Discontinued",
                width: 90,
                cellTemplate: this.bookDiscontinuedTpl
            }
        ];
    }

    getPolicyData() {
        this.bookService.getBooks().subscribe(policyData => {
            this.rows = policyData;
        });
    }
}
