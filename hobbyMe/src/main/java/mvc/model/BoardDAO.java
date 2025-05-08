package mvc.model; // 모델 계층의 DAO 클래스가 위치한 패키지

import java.sql.Connection; // DB 연결을 위한 클래스
import java.sql.PreparedStatement; // SQL 실행을 위한 클래스
import java.sql.ResultSet; // 쿼리 결과를 담는 클래스
import java.util.ArrayList; // 리스트 자료구조 사용

import mvc.database.DBConnection; // 커스텀 DB 연결 클래스 임포트

public class BoardDAO {

    private static BoardDAO instance; // DAO의 싱글톤 인스턴스

    private BoardDAO() {
        // 외부에서 생성자 호출 못 하도록 private 처리
    }

    // BoardDAO의 인스턴스를 반환하는 메서드 (싱글톤 패턴)
    public static BoardDAO getInstance() {
        if (instance == null)
            instance = new BoardDAO();
        return instance;
    }

    // board 테이블의 전체 글 수를 반환하는 메서드
    public int getListCount(String items, String text) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x = 0; // 글 수를 저장할 변수

        String sql;

        // 검색 조건이 없으면 전체 글 수 조회, 있으면 조건에 맞는 글 수 조회
        if (items == null || text == null || items.isEmpty() || text.isEmpty())
            sql = "SELECT count(*) FROM post";
        else
            sql = "SELECT count(*) FROM post WHERE " + items + " LIKE ?";

        try {
            conn = DBConnection.getConnection(); // DB 연결
            pstmt = conn.prepareStatement(sql); // SQL 준비
            if (items != null && text != null && !items.isEmpty() && !text.isEmpty()) {
                pstmt.setString(1, "%" + text + "%"); // 검색어 바인딩
            }
            rs = pstmt.executeQuery(); // 쿼리 실행

            if (rs.next())
                x = rs.getInt(1); // 결과에서 카운트 값 가져오기

        } catch (Exception ex) {
            System.out.println("getListCount() : " + ex); // 예외 출력
        } finally {
            // 자원 정리
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
        return x; // 글 수 반환
    }

    // board 테이블에서 게시글 리스트를 페이징 처리하여 반환하는 메서드
    public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int total_record = getListCount(items, text); // 전체 글 수
        int start = (page - 1) * limit; // 시작 인덱스

        String sql;
        if (items == null || text == null || items.isEmpty() || text.isEmpty()) {
            sql = "SELECT * FROM post ORDER BY post_num DESC LIMIT ?, ?";
        } else {
            sql = "SELECT * FROM post WHERE " + items + " LIKE ? ORDER BY post_num DESC LIMIT ?, ?";
        }

        ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);

            if (items != null && text != null && !items.isEmpty() && !text.isEmpty()) {
                pstmt.setString(1, "%" + text + "%");
                pstmt.setInt(2, start);
                pstmt.setInt(3, limit);
            } else {
                pstmt.setInt(1, start);
                pstmt.setInt(2, limit);
            }

            rs = pstmt.executeQuery();

            while (rs.next()) {
                BoardDTO board = new BoardDTO();
                board.setPost_num(rs.getInt("post_num"));
                board.setUser_id(rs.getString("user_id"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setCategory(rs.getString("category"));
                board.setTag(rs.getString("tag"));
                board.setCreated_date(rs.getString("created_date"));
                board.setEnd_date(rs.getString("end_date"));
                board.setReservation_date(rs.getString("reservation_date"));
                board.setLocation(rs.getString("location"));
                board.setPeople(rs.getInt("people"));
                board.setPrice(rs.getInt("price"));
                board.setThumbnail(rs.getString("thumbnail"));
                board.setImages(rs.getString("images"));
                board.setDeleted(rs.getString("deleted"));
                list.add(board);
            }
            return list;
        } catch (Exception ex) {
            System.out.println("getBoardList() : " + ex);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
        return null;
    }

    // member 테이블에서 특정 ID의 사용자 이름을 반환하는 메서드
    public String getLoginNameById(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        String name = null;
        String sql = "SELECT * FROM user WHERE user_id = ?";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id); // ID 바인딩
            rs = pstmt.executeQuery();

            if (rs.next())
                name = rs.getString("name"); // 이름 추출

            return name;
        } catch (Exception ex) {
            System.out.println("getLoginNameById() : " + ex);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
        return null;
    }

    // 새로운 게시글을 board 테이블에 삽입
    public void insertBoard(BoardDTO board) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DBConnection.getConnection();
            String sql = "INSERT INTO post (user_id, title, content, category, tag, created_date, end_date, reservation_date, location, people, price, thumbnail, images, deleted) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            pstmt = conn.prepareStatement(sql);

            // post_num은 자동 증가이므로 생략
            pstmt.setString(1, board.getUser_id()); // 사용자 ID
            pstmt.setString(2, board.getTitle()); // 제목
            pstmt.setString(3, board.getContent()); // 내용
            pstmt.setString(4, board.getCategory()); // 카테고리
            pstmt.setString(5, board.getTag()); // 태그
            pstmt.setString(6, board.getCreated_date()); // 작성일
            pstmt.setString(7, board.getEnd_date()); // 예약일
            pstmt.setString(7, board.getReservation_date()); // 예약일
            pstmt.setString(8, board.getLocation()); // 위치
            pstmt.setInt(9, board.getPeople()); // 인원 수
            pstmt.setInt(10, board.getPrice()); // 가격
            pstmt.setString(11, board.getThumbnail()); // 썸네일 경로
            pstmt.setString(12, board.getImages()); // 이미지 경로
            pstmt.setString(13, board.getDeleted()); // 삭제 여부

            pstmt.executeUpdate(); // 쿼리 실행
        } catch (Exception ex) {
            System.out.println("insertBoard() : " + ex);
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
    }

    // 특정 글 번호의 상세 내용을 반환
    public BoardDTO getBoardByNum(int post_num) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDTO board = null;

        String sql = "SELECT * FROM post WHERE post_num = ?";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, post_num); // 조회할 게시글 번호 설정
            rs = pstmt.executeQuery();

            if (rs.next()) {
                board = new BoardDTO(); // 게시글 DTO 객체 생성
                board.setPost_num(rs.getInt("post_num"));
                board.setUser_id(rs.getString("user_id"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setCategory(rs.getString("category"));
                board.setTag(rs.getString("tag"));
                board.setCreated_date(rs.getString("created_date"));
                board.setEnd_date(rs.getString("end_date"));
                board.setReservation_date(rs.getString("reservation_date"));
                board.setLocation(rs.getString("location"));
                board.setPeople(rs.getInt("people"));
                board.setPrice(rs.getInt("price"));
                board.setThumbnail(rs.getString("thumbnail"));
                board.setImages(rs.getString("images"));
                board.setDeleted(rs.getString("deleted"));
            }
            return board;
        } catch (Exception ex) {
            System.out.println("getBoardByNum() : " + ex);
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
        return null;
    }

    // 특정 글 수정
    public void updateBoard(BoardDTO board) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "UPDATE post SET title = ?, content = ?, category = ?, tag = ?, created_date =?, end_date=?, reservation_date = ?, location = ?, people = ?, price = ?, thumbnail = ?, images = ?, deleted = ? WHERE post_num = ?";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);

            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setString(3, board.getCategory());
            pstmt.setString(4, board.getTag());
            pstmt.setString(5, board.getCreated_date());
            pstmt.setString(6, board.getEnd_date());
            pstmt.setString(7, board.getReservation_date());
            pstmt.setString(8, board.getLocation());
            pstmt.setInt(9, board.getPeople());
            pstmt.setInt(10, board.getPrice());
            pstmt.setString(11, board.getThumbnail());
            pstmt.setString(12, board.getImages());
            pstmt.setString(13, board.getDeleted());
            pstmt.setInt(14, board.getPost_num());

            pstmt.executeUpdate(); // 쿼리 실행
        } catch (Exception ex) {
            System.out.println("updateBoard() : " + ex);
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
    } 

    // 특정 글 삭제
    public void deleteBoard(int post_num) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        String sql = "DELETE FROM post WHERE post_num = ?";

        try {
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, post_num); // 삭제할 글 번호 바인딩
            pstmt.executeUpdate(); // 쿼리 실행
        } catch (Exception ex) {
            System.out.println("deleteBoard() : " + ex);
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception ex) {
                throw new RuntimeException(ex.getMessage());
            }
        }
    }
}
