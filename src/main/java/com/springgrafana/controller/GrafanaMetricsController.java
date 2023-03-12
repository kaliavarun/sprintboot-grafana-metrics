package com.springgrafana.controller;


import org.json.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class GrafanaMetricsController {

    private static final Random random = new Random();

    @GetMapping(path="/memory", produces=MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<String> getRandomMemoryConsumption(){
        return ResponseEntity.ok().body(JSONObject.quote(String.format("%s%s", random.nextInt(1024), "Mb")));
    }
}
