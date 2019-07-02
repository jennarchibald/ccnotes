package com.example.codeclan.pirateservice.repository.ShipRepository;

import com.example.codeclan.pirateservice.models.Ship;

import java.util.List;

public interface ShipRepositoryCustom {
    List<Ship> findShipsThatHavePiratesNamed(String firstName);
}
