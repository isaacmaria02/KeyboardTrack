package com.model;

public class LogData {
	int seconds;
	float accuracy;
	String name;
	String mood;
	public int getSeconds() {
		return seconds;
	}
	public void setSeconds(int seconds) {
		this.seconds = seconds;
	}
	public float getAccuracy() {
		return accuracy;
	}
	public void setAccuracy(float accuracy) {
		this.accuracy = accuracy;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMood() {
		return mood;
	}
	public void setMood(String mood) {
		this.mood = mood;
	}
	@Override
	public String toString() {
		return "LogData [seconds=" + seconds + ", accuracy=" + accuracy + ", name=" + name + ", mood=" + mood + "]";
	}
	
	
	
	
}
