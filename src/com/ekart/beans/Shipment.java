/**
 * 
 */
package com.ekart.beans;

/**
 * @author shankar
 *
 */
public class Shipment {
	int shipmentId;
	String shipmentAddress;
	String shipmentType;
	String shipmentDate;
	public int getShipmentId() {
		return shipmentId;
	}
	public void setShipmentId(int shipmentId) {
		this.shipmentId = shipmentId;
	}
	public String getShipmentAddress() {
		return shipmentAddress;
	}
	public void setShipmentAddress(String shipmentAddress) {
		this.shipmentAddress = shipmentAddress;
	}
	public String getShipmentType() {
		return shipmentType;
	}
	public void setShipmentType(String shipmentType) {
		this.shipmentType = shipmentType;
	}
	public String getShipmentDate() {
		return shipmentDate;
	}
	public void setShipmentDate(String shipmentDate) {
		this.shipmentDate = shipmentDate;
	}

}
