package com.kce.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Buses")
public class DetailsBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "busid")
	private int id;

	@Column(name = "busfrom")
	private String from;

	@Column(name = "busto")
	private String to;

	@Column(name = "busdate")
	private String datee;
	
	@Column(name = "bookdate")
	private Date bookdate;

	@Column(name = "busname")
	private String name;

	@Column(name = "bustype")
	private String type;

	@Column(name = "seats")
	private String seat;

	@Column(name = "cost")
	private String fair;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getDatee() {
		return datee;
	}

	public void setDatee(String datee) {
		this.datee = datee;
	}

	public Date getBookdate() {
		return bookdate;
	}

	public void setBookdate(Date bookdate) {
		this.bookdate = bookdate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getFair() {
		return fair;
	}

	public void setFair(String fair) {
		this.fair = fair;
	}

	
}
