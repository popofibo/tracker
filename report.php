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

$dbhost = 'yourhostname';
$dbuser = 'yourusername';
$dbpass = 'yourpassword';

$myFile = '../customdash/data/report.xml';

$conn = mysql_connect ( $dbhost, $dbuser, $dbpass ) or die ( "Error connecting to DB" );

$dbname = 'yourdbname';
mysql_select_db ( $dbname );

$result = mysql_query ("SELECT * FROM review_tracker") or die("Data cannot be accessed at this time. Please try later.");
$return = "<items>";

while ($review = mysql_fetch_object($result)) {
	$return .= "<item reqid=\"".$review->reqid."\" rname=\"".$review->rname."\" email=\"".$review->email."\" dor=\"".$review->dor."\" review=\"".$review->review."\" rework=\"".$review->rework."\" defect=\"".$review->defect."\" category=\"".$review->category."\" completion=\"".$review->completion."\" downer=\"".$review->downer."\" />";
}

$return .= "</items>";
mysql_free_result($result);

print ($return);

/*$fh = fopen($myFile, 'w') or die("can't open file");
fwrite($fh, $return);
fclose($fh);*/

?>