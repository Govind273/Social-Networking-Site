package edu.iu.club.connect.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table ( name = "messages")
public class MessageModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "messageSequence")
    @SequenceGenerator(name ="messageSequence",sequenceName = "messages_messageid_seq",allocationSize = 1)
	private @Column(name = "messageid") Integer messageId;
    private @Column(name = "senderid")  Integer senderId;
    private @Column(name = "receiverid") Integer receiverId; //used in search feature
    private @Column(name = "sendername") String senderName;
    private @Column(name = "receivername") String receiverName;
    private @Column(name = "messagetime") Date messageTime;
    private @Column( name = "message" ) String message;
	
    public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Integer getSenderId() {
		return senderId;
	}
	public void setSenderId(Integer senderId) {
		this.senderId = senderId;
	}
	public Integer getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(Integer receiverId) {
		this.receiverId = receiverId;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public Date getMessageTime() {
		return messageTime;
	}
	public void setMessageTime(Date messageTime) {
		this.messageTime = messageTime;
	}


}
