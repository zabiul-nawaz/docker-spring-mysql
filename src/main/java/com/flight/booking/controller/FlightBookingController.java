package com.flight.booking.controller;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.flight.booking.model.Flight;
import com.flight.booking.repo.FlightRepository;

/**
 * @author Nawaz
 *
 */
@RestController
public class FlightBookingController {

    /**
     *
     */
    protected Logger logger = Logger
            .getLogger(FlightBookingController.class.getName());

    /**
     *
     */
    @Autowired
    FlightRepository flightRepository;

    /**
     * @return
     */
    @RequestMapping("/flights")
    public Flight[] getFlights() {
        logger.info("flights-microservice getFlights() invoked");
        List<Flight> flights = flightRepository.findAll();
        return flights.toArray(new Flight[flights.size()]);
    }

}
