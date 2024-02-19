package com.example.foodsustainability.restaurant;

import org.springframework.data.annotation.Id;
import com.azure.spring.data.cosmos.core.mapping.Container;
import com.azure.spring.data.cosmos.core.mapping.PartitionKey;

@Container(containerName = "grocery")
public class Grocery {
    @Id
    private String id;
    @PartitionKey
    private String groceryName;
    private String quantity;
    private String harvestTime;
    private String price;
    private String originFarm;

    public Grocery() {
        
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGroceryName() {
        return groceryName;
    }

    public void setGroceryName(String groceryName) {
        this.groceryName = groceryName;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getHarvestTime() {
        return harvestTime;
    }

    public void setHarvestTime(String harvestTime) {
        this.harvestTime = harvestTime;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getOriginFarm() {
        return originFarm;
    }

    public void setOriginFarm(String originFarm) {
        this.originFarm = originFarm;
    }
}
