#!/bin/bash
function quit {
    DONE="DONE!!!"
    echo $DONE
	}
function flycmd {
    fly --target $1 login --concourse-url http://192.168.100.4:8080
    fly --target $1 set-pipeline --config pipeline.yml --pipeline $1
    fly --target $1 unpause-pipeline --pipeline $1
    }
flycmd
quit