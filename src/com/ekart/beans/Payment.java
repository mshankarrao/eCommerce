/**
 * 
 */
package com.ekart.beans;

/**
 * @author shankar
 *
 */
public class Payment {
public int getPaymentAmount() {
		return paymentAmount;
	}
	public void setPaymentAmount(int paymentAmount) {
		this.paymentAmount = paymentAmount;
	}
int paymentId;
String paymentDetail;
String paymentMode;
String cardType;
int paymentAmount;
public int getPaymentId() {
	return paymentId;
}
public void setPaymentId(int paymentId) {
	this.paymentId = paymentId;
}
public String getPaymentDetail() {
	return paymentDetail;
}
public void setPaymentDetail(String paymentDetail) {
	this.paymentDetail = paymentDetail;
}
public String getPaymentMode() {
	return paymentMode;
}
public void setPaymentMode(String paymentMode) {
	this.paymentMode = paymentMode;
}
public String getCardType() {
	return cardType;
}
public void setCardType(String cardType) {
	this.cardType = cardType;
}

}
