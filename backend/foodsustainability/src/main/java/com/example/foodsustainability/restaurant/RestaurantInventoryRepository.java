package com.example.foodsustainability.restaurant;


import org.springframework.stereotype.Repository;
import com.azure.spring.data.cosmos.repository.CosmosRepository;

@Repository
public interface RestaurantInventoryRepository extends CosmosRepository<Grocery, String>{
    
}
