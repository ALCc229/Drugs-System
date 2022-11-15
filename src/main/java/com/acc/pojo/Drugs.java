package com.acc.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Drugs {
    private int DrugId;
    private String DrugName;
    private boolean DrugState;
    private String DrugClass;
    private String DrugDetail;
    private Float DrugPrice;
    private int DrugNum;
}
