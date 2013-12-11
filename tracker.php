<?php

/*
	Copyright (C) 2011 Nitin Pathak (www.popofibo.com)

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

$reqid = $_POST['uid'];
$rname = $_POST['rname'];
$email = $_POST['email'];
$dor = $_POST['dor'];
$review = $_POST['review'];
$rework = $_POST['rework'];
$defect = $_POST['defect'];
$category = $_POST['category'];
$completion = $_POST['completion'];
$downer = $_POST['downer'];

$dbhost = 'yourhostname';
$dbuser = 'yourusername';
$dbpass = 'yourpassword';

$conn = mysql_connect ( $dbhost, $dbuser, $dbpass ) or die ( "Error connecting to DB" );

$dbname = 'yourdbname';
mysql_select_db ( $dbname );

$query = mysql_query ( "INSERT INTO review_tracker (reqid, rname, email, dor, review, rework, defect, category, completion, downer) VALUES ('$reqid', '$rname', '$email', '$dor', '$review', '$rework', '$defect', '$category', '$completion', '$downer')" ) or die ( "Error connecting to the DB. Please try again later or contact Nitin at popo.fibo@gmail.com" . mysql_error() );
mysql_close ( $conn );

print "Tracker was last successfully updated with the Request ID: " . $reqid;

?>