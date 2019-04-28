package com.cengenes.configuration.api.entity.response;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

import java.util.List;

public class PageResponse extends OperationResponse {
    private boolean  first;
    private boolean  last;
    private int currentPageNumber;
    private int itemsInPage;
    private int pageSize;
    private int totalPages;
    private long totalItems;
    private Sort sort;
    private List items;

    public void setPageStats(Page pg, boolean setDefaultMessage){
        this.first             = pg.isFirst();
        this.last              = pg.isLast();
        this.currentPageNumber = pg.getNumber();
        this.itemsInPage       = pg.getNumberOfElements();
        this.pageSize          = pg.getSize();
        this.totalPages        = pg.getTotalPages();
        this.totalItems        = pg.getTotalElements();
        //this.items             = pg.getContent();
        this.sort              = pg.getSort();
        if (setDefaultMessage == true){
            this.setOperationStatus(ResponseStatusEnum.SUCCESS);
            this.setOperationMessage("Page " + (pg.getNumber()+ 1 ) + " of " + pg.getTotalPages() );
        }
    }

    public void setPageTotal(int count, boolean setDefaultMessage){
        //this.items             = list;
        this.first             = true;
        this.last              = true;
        this.itemsInPage       = count;
        this.totalItems        = count;
        this.totalPages        = 1;
        this.pageSize          = count;
        if (setDefaultMessage == true){
            this.setOperationStatus(ResponseStatusEnum.SUCCESS);
            this.setOperationMessage("Total " + count + " items ");
        }
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public long getTotalItems() {
        return totalItems;
    }

    public void setTotalItems(long totalItems) {
        this.totalItems = totalItems;
    }

    public Sort getSort() {
        return sort;
    }

    public void setSort(Sort sort) {
        this.sort = sort;
    }

    public List getItems() {
        return items;
    }

    public void setItems(List items) {
        this.items = items;
    }

    public boolean isFirst() {
        return first;
    }

    public void setFirst(boolean first) {
        this.first = first;
    }

    public boolean isLast() {
        return last;
    }

    public void setLast(boolean last) {
        this.last = last;
    }

    public int getCurrentPageNumber() {
        return currentPageNumber;
    }

    public void setCurrentPageNumber(int currentPageNumber) {
        this.currentPageNumber = currentPageNumber;
    }

    public int getItemsInPage() {
        return itemsInPage;
    }

    public void setItemsInPage(int itemsInPage) {
        this.itemsInPage = itemsInPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
