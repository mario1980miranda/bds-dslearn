package com.code.truck.dslearn.entities;

import java.time.Instant;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "tb_task")
@NoArgsConstructor
@ToString
public class Task extends Lesson {
    private String description;
    private Integer questionCount;
    private Integer aprovalCount;
    private Double weigth;
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant dueDate;

    public Task(Long id, String title, Integer position, Section section, String description, Integer questionCount,
            Integer aprovalCount, Double weigth, Instant dueDate) {
        super(id, title, position, section);
        this.description = description;
        this.questionCount = questionCount;
        this.aprovalCount = aprovalCount;
        this.weigth = weigth;
        this.dueDate = dueDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getQuestionCount() {
        return questionCount;
    }

    public void setQuestionCount(Integer questionCount) {
        this.questionCount = questionCount;
    }

    public Integer getAprovalCount() {
        return aprovalCount;
    }

    public void setAprovalCount(Integer aprovalCount) {
        this.aprovalCount = aprovalCount;
    }

    public Double getWeigth() {
        return weigth;
    }

    public void setWeigth(Double weigth) {
        this.weigth = weigth;
    }

    public Instant getDueDate() {
        return dueDate;
    }

    public void setDueDate(Instant dueDate) {
        this.dueDate = dueDate;
    }

}
