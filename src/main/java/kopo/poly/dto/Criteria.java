package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
    private int pageNum;
    private int amount;
    private int startNum;

    public Criteria() {
        //객체 생성시 기본 생성자를 호출하여 매개변수를 줘서 매개변수를 가지고 있는 생성자 함수 호출
        this(1, 10); //생성자에서 pageNum=1, amount=10으로 설정
    }
    // 기본 생성자 설정
    public Criteria(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }
}
