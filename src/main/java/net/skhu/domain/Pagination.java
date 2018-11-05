package net.skhu.domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Pagination
{
    int currentPage = 1;
    int pageSize = 10;
    int recordCount;
    int id;
    int pg;
    int sz;

    /* pg만 getter와 setter 만든 이유는 받는게 currentPage때문에
        만들었다.
     */

    public int getPg() {
        return currentPage;
    }

    public void setPg(int currentPage) {
        this.currentPage = currentPage;
    }


    /* 멤버 변수 값들을 quey string으로 출력하기 위한 메소드 */
    public String getQueryString() {
        return String.format("pg=%d&sz=%d", currentPage, pageSize);
    }

    /* 화면 하단에 페이지 번호 링크들을 출력하기 위한 메소드와 클래스 */
    public List<Page> getPageList() {
        ArrayList<Page> list = new ArrayList<Page>();
        int pageCount = (recordCount + pageSize - 1) / pageSize;
        int basePage = ((currentPage - 1) / 10) * 10;
        if (basePage > 0)
            list.add(new Page("Prev", basePage));
        for (int i = 1; i <= 10 && basePage + i <= pageCount; ++i)
            list.add(new Page(basePage + i, currentPage == basePage + i));
        if (basePage + 11 <= pageCount)
            list.add(new Page("Next", basePage + 11));
        return list;
    }
    @Data
    public class Page {
        String label;
        int number;
        String cssClass;

        public Page(int number, boolean active) {
            this.label = "" + number;
            this.number = number;
            this.cssClass = active ? "active" : "";
        }

        public Page(String label, int number) {
            this.label = label;
            this.number = number;
            this.cssClass = "";
        }

        public Object getLabel() {
            return label;
        }

    }
}
