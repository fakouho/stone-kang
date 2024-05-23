package com.example.demo.domain;



import java.sql.Timestamp;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Entity
@Table(name="tbl_webboards")
@EqualsAndHashCode(of="bno")
@ToString
public class WebBoard {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long bno;
    
    private String title;
    private String writer;
    private String content;
    
    @CreationTimestamp
    private Timestamp regdate;
    
    @UpdateTimestamp
    private Timestamp updatedate;
}