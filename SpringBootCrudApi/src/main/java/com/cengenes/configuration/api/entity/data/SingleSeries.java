package com.cengenes.configuration.api.entity.data;

import java.math.BigDecimal;

public class SingleSeries {
    private String name;
    private BigDecimal value;

    public SingleSeries(){}

    public SingleSeries( String name, BigDecimal value){
        this.name  = name;
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }
}
