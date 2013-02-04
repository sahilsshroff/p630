{include file=$header1 title="Advisor Dashboard"}
{include file=$header2}
<!--/Start::Body/-->

<div id="WrapperOtr">
  <div id="Pageholder">
    <div class="about_page_otr">
      
      <h1>Advisor Account</h1>
      <div class="line_divider"></div>
      
      <div class="abt_main_otr">
      	{assign value="abt_active" var=abt_active8}
        {include file=$advisorLeftMenu}
        
        <div class="user_dash_right_part">
        
        	<div class="session_heading_titl"> <div class="msg_new_head"> Promote Profile </div></div>
            <div class="promote_profile_page">
            	<div class="widget_blog_main">
                	<div class="wid_head">Add a widget to your blog or website</div>
                    <div id="wid_size" class="width_txt">192 x 300px</div>
                    <div id="widget_boxx" class="widget_blog_inn">
                    	<div class="promt_01"><img src="{$site_path}front_media/images/promt01.png" ></div>
                        <div class="promt_01"><a href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/promt1.png" title="View my guru bul profile" ></a></div>
                        <div class="promt_01"><a href="{$site_path}schedule-web-cam/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/promt2.png" title="Book a phone consultation" ></a></div>
                        <div class="promt_01"><a href="{$site_path}book-an-email/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/promt3.png" title="Schedule an email consultation" ></a></div>
                        <div id="price" class="promt_04"><div class="wid_hr">${$data['priceWebConsulte']} / hr</div> <div class="wid_hr2">${$data['priceEmailConsulte']}</div> </div>
                         <div class="powrd_txt"><a href="{$site_path}">Powered by guru bul</a></div>
                          <div class="powrd_txt"><a href="#">Get your opwn guru bul widget</a></div>
                    </div>
                    <div class="wid_pice">
                    	<div class="show_price"><input type="radio" id="show_price" name="price" value="show" checked>Show Price</div>
                        <div class="show_price"><input type="radio" id="hide_price" name="price" value="hide">Hide Price</div>
                    </div>
                    <div class="fld_otr"><input type="submit" name="" id="wid_code" value="Get Widget Code"></div>
                </div>
                
                <div class="widget_blog_main2">
                	<div class="wid_head">Add a button to your email signature (links to your profile)</div>
                    <div class="guru_main_btn_otr">
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_1" name="butt" value="1" checked ></div>
                        <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn1.png" ></a>
                        <div class="guru_radio_btn"> 167 X 38px</div>
                    </div>
                    
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_2" name="butt" value="2"></div>
                      <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn2.png" ></a>
                        <div class="guru_radio_btn"> 167 X 38px</div>
                    </div>
                    
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_3" name="butt" value="3"></div>
                        <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn3.png" ></a>
                        <div class="guru_radio_btn"> 167 X 38px</div>
                    </div>
                    
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_4" name="butt" value="4"></div>
                        <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn4.png" ></a>
                        <div class="guru_radio_btn"> 167 X 38px</div>
                    </div>
                    
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_5" name="butt" value="5"></div>
                        <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn5.png" ></a>
                        <div class="guru_radio_btn"> 191 X 38px</div>
                    </div>
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_6" name="butt" value="6"></div>
                       <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"> <img src="{$site_path}front_media/images/guru_btn6.png" ></a>
                        <div class="guru_radio_btn"> 191 X 38px</div>
                    </div>
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_7" name="butt" value="7"></div>
                        <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn7.png" ></a>
                        <div class="guru_radio_btn"> 141 X 38px</div>
                    </div>
                    <div class="guru_btn_otr">
                    	<div class="guru_radio_btn"><input type="radio" id="but_8" name="butt" value="8"></div>
                        <a  href="{$site_path}view-advisor-profile/{$smarty.session.advisor_id}"><img src="{$site_path}front_media/images/guru_btn8.png" ></a>
                        <div class="guru_radio_btn"> 191 X 38px</div>
                    </div>
                    
                    
                    </div>
                    
                    <div class="fld_otr"><input type="submit" name="" id="but_code" value="Get Button"></div>
                </div>
                
                
            </div>
        </div>
        
      </div>
    </div>
  </div>
</div>
{literal}
<script>
$(document).ready(function(e) {
    $('#hide_price').click(function(e) {
        $('#price').fadeOut('fast');
		$('#widget_boxx').animate({height:245});
		$('#wid_size').html('192 x 265px');
    });
	
	$('#show_price').click(function(e) {
        $('#price').fadeIn('fast');
		$('#widget_boxx').animate({height:280});
		$('#wid_size').html('192 x 300px');
    });
	$("#wid_code").bind("click", function(event)
	{
		if($('#show_price').attr('checked')){	
			var to_show = "yes";
		}
		else{
			var to_show = "no";
		}
		tb_show('','front_media/js/lightbox/widget_code.php?shw='+to_show+'&keepThis=true&modal=true&TB_iframe=true&height=501&width=630','false');
	});
	$('#but_code').click(function(e) {
		var but_show;
        if($('#but_1').attr('checked')){
			but_show = "1";
		}
		else if($('#but_2').attr('checked')){
			but_show = "2";
		}
		else if($('#but_3').attr('checked')){
			but_show = "3";
		}
		else if($('#but_4').attr('checked')){
			but_show = "4";
		}
		else if($('#but_5').attr('checked')){
			but_show = "5";
		}
		else if($('#but_6').attr('checked')){
			but_show = "6";
		}
		else if($('#but_7').attr('checked')){
			but_show = "7";
		}
		else{
			but_show = "8";
		}
		tb_show('','front_media/js/lightbox/but_code.php?shw='+but_show+'&keepThis=true&modal=true&TB_iframe=true&height=330&width=630','false');
				
    });
});
</script>
{/literal}
<script type="text/javascript" src="{$site_path}front_media/js/lightbox/popup.js"></script>
<script type="text/javascript" src="{$site_path}front_media/js/lightbox/thickbox.js"></script>
<link rel="stylesheet" href="{$site_path}front_media/js/lightbox/css/thickbox.css" type="text/css" media="screen" />

<!--/End::Body/-->
{include file=$footer}