<?php
#RequirFile:
require_once('pi_classes/commonSetting.php');
require_once("pi_classes/Category.php");
require_once("pi_classes/User.php");

#Objects:
$objCat		=	new Category();

#clone::
$objAdd = clone $objCat;


#Show Home Page Category Listing:
#GetMainCategoryFromDatabase:
	#clone:
	$objGetMainCat = clone $objCat;
	#prameter:
	$tableName 		 = "category";
	$whereField 	 = " where `parent_id`='0' and `cat_level`='1' and `home`='1' ORDER BY cat_name ASC";
	$objGetMainCat->retrieve_data_from_table($tableName,$whereField);
	$numOfMainCat 	 = $objGetMainCat->numofrows();
	$lp = "1"; 
	while($tmpCatRow = $objGetMainCat->getAllRow()){
		  $tmpCatRow['lp']	= $lp;
		  #Query::-
		  	#clone:
			$objGetSubCat = clone $objCat;
			#prameter:
			$tableName 		 = "category";
			$whereField 	 = " where `parent_id`='".$tmpCatRow['cat_id']."' and `cat_level`='2' and `home`='1' ORDER BY cat_name ASC";
			$objGetSubCat->retrieve_data_from_table($tableName,$whereField);
			$numOfSubCat	 = $objGetSubCat->numofrows();
			$lpSub = "1"; 
			while($tmpSubCatRow = $objGetSubCat->getAllRow()){
						$tmpSubCatRow['lpSb']		= $lpSub;
						$tmpCatRow['subCategory'][] = $tmpSubCatRow;
				$lpSub++;
			}
		  $category[]	= $tmpCatRow;
		$lp++; 
	}
	#echo "<pre>"; print_r($category); echo "</pre>";
	$smarty->assign("category",$category);
	
	
#Random Adv From Database:
$objAdv = new User();
$objAdvWE = clone $objAdv;
$objAdvExpr = clone $objAdv;
$objAdvCat = clone $objAdv;
$objAdvEdu = clone $objAdv;
$objAdvPro = clone $objAdv;
$table_name = "advisor_details";
$where = " where `advisor_status` = 'Active' and `verified` = 'Yes' order by RAND() limit 4";
$objAdv->retrieve_data_from_table($table_name,$where);
#@~::
while($tempAdv = $objAdv->getAllRow()){
	$tempAdv['priceEmailConsulte'] = floor($tempAdv['priceEmailConsulte']);
	$tempAdv['priceWebConsulte'] = floor($tempAdv['priceWebConsulte']);
	$var_image_advisor = trim($tempAdv['image_path']);
	#@~:
	if($var_image_advisor==""){
		$tempAdv['image_path'] = "user-comment.png";
	}

	#Action:: For Take a advisor_experience from Data base:
	$objAdvWE->retrieve_data_from_table("advisor_experience"," where `advisor_id` ='".$tempAdv['advisor_id']."' order by `time_period_to` DESC limit 1");
	$workExp = $objAdvWE->getAllRow();
	$tempAdv['title'] = $workExp['title'];
	$tempAdv['employer'] = $workExp['employer'];
	
	#Action:: For Take a advisor_expertise from Data base:	
	$objAdvExpr->retrieve_data_from_table("advisor_expertise"," where `advisor_id` ='".$tempAdv['advisor_id']."' order by RAND() limit 1");
	$expr = $objAdvExpr->getAllRow();

	if(!empty($expr)){
		#Action:: For Take a category from Data base for expertise_cat_id:	
		$objAdvCat->retrieve_data_from_table("category"," where `cat_id` =".$expr['expertise_cat_id']);
		$cat = $objAdvCat->getAllRow();
		#@~:
		$tempAdv['cat_name'] = $cat['cat_name'];
		
		#Action:: For Take a advisor_expertise from Data base for area_service_id:	
		$objAdvCat->retrieve_data_from_table("category"," where `cat_id` =".$expr['area_service_id']);
		$cat1 = $objAdvCat->getAllRow();
		#@~:
		$tempAdv['area_name'] = $cat1['cat_name'];
	}
	
	#Action:: For Take a advisor_education from Data base by advisor_id:	
	$objAdvEdu->retrieve_data_from_table("advisor_education"," where `advisor_id` ='".$tempAdv['advisor_id']."' order by `graduation_year` DESC limit 1");
	$edu = $objAdvEdu->getAllRow();
	#@~:
	$tempAdv['school'] = $edu['school'];
	$tempAdv['degree'] = $edu['degree'];
	
	#Action:: For Take a product from Data-base by advisor_id:	
	$objAdvPro->retrieve_data_from_table("product"," where `advisor_id` ='".$tempAdv['advisor_id']."' and `status` = 'active' order by RAND() DESC limit 4");
	while($tempPro = $objAdvPro->getAllRow()){
		$pro[] = $tempPro['name'];
	}
	#@~:
	$tempAdv['products'] = $pro;
	unset($pro);
	
	#@~:Final Arr:
	$adv[] = $tempAdv;
}

$smarty->assign("adv",$adv);


#View:
$smarty->display('templates/index.tpl');

#BK- code ::: Commented code:
/*$table_name = "category";
$whereCnd=" where `home` = 1 and `parent_id`=18 order by cat_name ASC";
$objAdd->retrieve_data_from_table($table_name, $whereCnd);
	while($tmpRow = $objAdd->getAllRow()){
		$catAdd[] = $tmpRow;
	}
$smarty->assign("catAdd", $catAdd);

$whereCnd=" where `home` = 1 and `parent_id`=23 order by cat_name ASC";
$objAdd->retrieve_data_from_table($table_name, $whereCnd);
	while($tmpRow = $objAdd->getAllRow()){
		$catCar[] = $tmpRow;
	}
$smarty->assign("catCar", $catCar);

$whereCnd=" where `home` = 1 and `parent_id`=40 order by cat_name ASC";
$objAdd->retrieve_data_from_table($table_name, $whereCnd);
	while($tmpRow = $objAdd->getAllRow()){
		$catBus[] = $tmpRow;
	}
$smarty->assign("catBus", $catBus);

$whereCnd=" where `home` = 1 and `parent_id`=39 order by cat_name ASC";
$objAdd->retrieve_data_from_table($table_name, $whereCnd);
	while($tmpRow = $objAdd->getAllRow()){
		$catTut[] = $tmpRow;
	}
$smarty->assign("catTut", $catTut);*/

?>