package com.vilt.tvshows.model;

import java.util.Date;
import java.util.List;

public class Game {

	private List<Player> team1;
	private List<Player> team2;
	private int result_team1;
	private int result_team2;
	private Date date_of_game;
	private Date created_at;
	
	public List<Player> getTeam1() {
		return team1;
	}
	public void setTeam1(List<Player> team1) {
		this.team1 = team1;
	}
	public List<Player> getTeam2() {
		return team2;
	}
	public void setTeam2(List<Player> team2) {
		this.team2 = team2;
	}
	public int getResult_team1() {
		return result_team1;
	}
	public void setResult_team1(int result_team1) {
		this.result_team1 = result_team1;
	}
	public int getResult_team2() {
		return result_team2;
	}
	public void setResult_team2(int result_team2) {
		this.result_team2 = result_team2;
	}
	public Date getDate_of_game() {
		return date_of_game;
	}
	public void setDate_of_game(Date date_of_game) {
		this.date_of_game = date_of_game;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
}
