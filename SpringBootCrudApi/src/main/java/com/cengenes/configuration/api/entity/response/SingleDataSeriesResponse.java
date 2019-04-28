package com.cengenes.configuration.api.entity.response;

import com.cengenes.configuration.api.entity.data.SingleSeries;

import java.util.List;

public class SingleDataSeriesResponse extends OperationResponse{
    private List<SingleSeries> items;

    public List<SingleSeries> getItems() {
        return items;
    }

    public void setItems(List<SingleSeries> items) {
        this.items = items;
    }
}
