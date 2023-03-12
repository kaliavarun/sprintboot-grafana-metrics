package com.springgrafana.controller;


import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class GrafanaMetricsController {

    private static final Random random = new Random();

    @GetMapping(path="/memory", produces= MediaType.APPLICATION_JSON_VALUE)
    public String getRandomMemoryConsumption(){
        return String.format("%s%s", random.nextInt(1024), "Mb");
    }
}
