<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Details</title>
</head>

<body>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<form action="studentDetails" method="post">
<div align="center">
  <table width="870" border="1">
    <tr>
      <th width="39" scope="col">S.N.</th>
      <th colspan="5" scope="col">Student Details</th>
      </tr>
    <tr>
      <td>1</td>
      <td>Examination*</td>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Year*</td>
      <td colspan="4">Default-Current year</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Part/Semester*</td>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td><p>4</p></td>
      <td width="413">Name*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>5</td>
      <td>Date of Birth*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td rowspan="2">6</td>
      <td rowspan="2">Place of Birth*</td>
      <td width="109">Town</td>
      <td width="115">Distt.</td>
      <td colspan="2">State</td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td colspan="2">&nbsp;</td>
      </tr>
    <tr>
      <td>7</td>
      <td>Email Address*</td>
      <td colspan="4">&nbsp;</td>
    </tr>
    <tr>
      <td>8</td>
      <td>Nationality*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>9</td>
      <td>Religion*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>10</td>
      <td>Gender*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>11</td>
      <td>Father's Name*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>12</td>
      <td>Mother's Name*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>13</td>
      <td>Spouse's Name*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td rowspan="2">14</td>
      <td rowspan="2">Home Address*</td>
      <td>Street</td>
      <td>City</td>
      <td width="79">State</td>
      <td width="75">Pincode</td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <td rowspan="2">15</td>
      <td rowspan="2">Permanent Address*</td>
      <td>Street</td>
      <td>City</td>
      <td>State</td>
      <td>Pincode</td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      </tr>
    <tr>
      <td>16</td>
      <td>Medium of Examination*</td>
      <td colspan="4">&nbsp;</td>
      </tr>
    <tr>
      <td>17</td>
      <td>Enrollment Number*</td>
      <td colspan="4">string</td>
      </tr>
    <tr>
      <td>18</td>
      <td>Belong to  S.C/S.T/O.B.C*</td>
      <td colspan="4">boolean</td>
      </tr>
    <tr>
      <td>19</td>
      <td>Were you ever rustigated/  expelled/ disqualified/ debarred from appearing at the examination?*</td>
      <td colspan="4"><p>boolean</p>
        <p>default-No</p></td>
      </tr>
  </table>
  <p>&nbsp;</p>
</div>
<p align="center">&nbsp;</p>
<div align="center">
  <table width="870" border="1">
    <tr>
      <th width="210" rowspan="2" scope="col">Details for point 19 rustigated/ expelled/ disqualified/ debarred from appearing at the examination?</th>
      <th width="105" scope="col">University/ Board</th>
      <th width="87" scope="col">Examination</th>
      <th width="115" scope="col">Year</th>
      <th width="116" scope="col">Enrollment No.</th>
      <th width="115" scope="col">Roll No.</th>
      <th width="76" scope="col">Period of punishment</th>
      </tr>
    <tr>
      <td height="49"><p>String</p>
        <p>default-NA</p></td>
      <td><p>String</p>
        <p>default-NA</p></td>
      <td><p>short</p>
        <p>default-NA</p></td>
      <td><p>String</p>
        <p>default-NA</p></td>
      <td><p>String</p>
        <p>default-NA</p></td>
      <td><p>String</p>
        <p>default-NA</p></td>
      </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
<p align="center">
  <input type="submit" name="Proceed" value="Proceed"/>
</p>
</form>
</body>
</html>