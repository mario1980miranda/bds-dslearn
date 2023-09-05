package com.code.truck.dslearn.entities;

import java.io.Serializable;
import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "tb_enrollment")
@NoArgsConstructor
@Getter
@EqualsAndHashCode
@ToString
public class Enrollment implements Serializable {
    @EmbeddedId
    private EnrollmentPK id = new EnrollmentPK();
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant enrollMoment;
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant refundMoment;
    private boolean available;
    private boolean onlyUpdate;

    @ManyToMany(mappedBy = "enrollmentsDone")
    private Set<Lesson> lessonsDone = new HashSet<>();

    public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available,
            boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    public void setId(EnrollmentPK id) {
        this.id = id;
    }

    public void setEnrollMoment(Instant enrollMoment) {
        this.enrollMoment = enrollMoment;
    }

    public void setRefundMoment(Instant refundMoment) {
        this.refundMoment = refundMoment;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public void setOnlyUpdate(boolean onlyUpdate) {
        this.onlyUpdate = onlyUpdate;
    }

}
