{include file=$header1 title="Advisor Dashboard"}
{include file=$header2} 
<!--/Start::Body/-->
<div id="WrapperOtr">
  <div id="Pageholder">
    <div class="about_page_otr">
      <h1>Advisor Account</h1>
      <div class="line_divider"></div>
      <div class="abt_main_otr"> {assign value="abt_active" var=abt_active3}
        {include file=$advisorLeftMenu}
        <div class="adviosr_session_msg">
          <div class="edit_menu_start">
            <ul>
              <li> <a href="{$site_path}session-pending"> Pending Request </a></li>
              <li> <a href="{$site_path}session-accepted"> Accepted Request</a></li>
              <li> <a class="edit_act_nav1" href="{$site_path}session-completed"> Completed Request</a></li>
            </ul>
          </div>
          <div class="pending_req">
            <div class="pending_req_head"> Webcam sessions </div>
            <ul>
              {foreach from=$webcam item=i}
              <li> {$i.subject}
                <div class="comment_two"> </div>
              </li>
              {foreachelse}
               <div class="session_req_lef_comment">
                    <div class="comment_one" style="width:100%; margin-top:10px;"><strong> No Any! Webcam Sessions Completed Request to Display Here ! 
                    </strong></div>
                    <div class="comment_two">&nbsp;</div>
                </div>
              {/foreach}
            </ul>
          </div>
          <div class="pending_req">
            <div class="pending_req_head"> Email Consulting</div>
            <ul>
              {foreach from=$message item=i}
              <li> {$i.subject}
                <div class="comment_two"> </div>
              </li>
              {foreachelse}
              <div class="session_req_lef_comment">
                    <div class="comment_one" style="width:100%; margin-top:10px;"><strong> No Any! Email Consultancy Completed Request to Display Here ! 
                    </strong></div>
                    <div class="comment_two">&nbsp;</div>
                </div>
              {/foreach}
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--/End::Body/--> 
{include file=$footer}