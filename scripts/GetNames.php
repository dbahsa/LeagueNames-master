<table class="table">
	<thead>
		<tr>
			<th>Names<th>
		</tr>
	</thead>
	<tbody>

<?php

$hostname = "localhost";
$username = "fantasy";
$password = "JustLikeRonSwanson";
$database = "fantasy";

$link = mysqli_connect($hostname,$username,$password,$database,3306);

$query = "SELECT DISTINCT ProposedName FROM leaguename ORDER BY ProposedName";

$result = mysqli_query($link, $query) or die(Mysqli_error($link));

while($row = mysqli_fetch_assoc($result)){
	echo "<tr><td>".$row['ProposedName']."</td></tr>";
};
?>

	</tbody>
</table>
