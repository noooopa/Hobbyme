<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>HobbyMe</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="./css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>
<div class="wrapper">

  <%@ include file="/WEB-INF/view/common/header.jsp" %>
  <%@ include file="/WEB-INF/view/common/remote.jsp" %>
  <%@ include file="/WEB-INF/view/main/main.jsp" %>
  <%@ include file="/WEB-INF/view/common/footer.jsp" %>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
  window.addEventListener('scroll', () => {
    const remote = document.getElementById('remoteMenu');
    remote.style.top = window.scrollY + 100 + 'px';
  });
</script>
</body>
</html>
