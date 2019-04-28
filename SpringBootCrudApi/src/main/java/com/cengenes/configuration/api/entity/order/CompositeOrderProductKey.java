package com.cengenes.configuration.api.entity.order;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class CompositeOrderProductKey implements Serializable {
    private int orderId;
    private int productId;

    public CompositeOrderProductKey(int orderId, int productId) {
        this.orderId = orderId;
        this.productId = productId;
    }
}