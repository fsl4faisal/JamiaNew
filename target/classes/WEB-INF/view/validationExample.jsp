<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<h1>Peter's Junk-Mail Service</h1>

<c:if test="${param.submitted}">
  <c:if test="${empty param.name}" var="noName" />
  <c:if test="${empty param.email}" var="noEmail" />
  <c:if test="${empty param.age}" var="noAge" />

  <c:catch var="ageError">
    <fmt:parseNumber var="parsedAge" value="${param.age}" />
    <c:if test="${parsedAge < 13}" var="youngAge" />
  </c:catch>
  <c:if test="${not empty ageError}" var="badAge" />

  <c:if
   test="${not (noName or noEmail or noAge or badAge or youngAge)}">
    <c:set value="${param.name}" var="name" scope="request"/>
    <c:set value="${param.email}" var="email" scope="request"/>
    <c:set value="${param.age}" var="age" scope="request"/>
    <jsp:forward page="spamFormHandler.jsp" />
  </c:if>
</c:if>

<form method="post">
  <input type="hidden" name="submitted" value="true" />

  <P>
  Enter your name:
  <input type="text" name="name"
    value="<c:out value="${param.name}"/>" />
  <br />
  <c:if test="${noName}">
   <small><font color="red">
     Note: you must enter a name
   </font></small>
  </c:if>
  </p>

  <P>
  Enter your email address:
  <input type="text" name="email"
    value="<c:out value="${param.email}"/>" />
  <br />
  <c:if test="${noEmail}">
   <small><font color="red">
     Note: you must enter an email address
   </font></small>
  </c:if>
  </p>

  <P>
  Enter your age:
  <input type="text" name="age" size="3"
    value="<c:out value="${param.age}"/>" />
  <br />
  <c:choose>
    <c:when test="${noAge}">
     <small><font color="red">
       Note: you must enter your age
     </font></small>
    </c:when>
    <c:when test="${badAge}">
     <small><font color="red">
       Note: I couldn't decipher the age you typed in
     </font></small>
    </c:when>
    <c:when test="${youngAge}">
     <small><font color="red">
       Note: You're too young to receive 
       junk mail.  Please grow older and try again.
     </font></small>
    </c:when>
  </c:choose>
  </p>

  <input type="submit" value="Sign up" />

</form>