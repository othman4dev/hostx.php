<!-- actions-section -->
<div class="actions-section bg-2 py-90">
<div class="container">
  <!-- se-head -->
  <div class="se-head">
    <h3 class="se-title-1">{lang key="clientHomePanels.quickActions"}</h3>
    <h4 class="se-title-2">{lang key="clientHomePanels.howCanWeHelp1"}</h4>
  </div>
  <!-- row -->
  <div class="row text-center" data-gap-y="30px">
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/announcements.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='announcementstitle'}</h5>
        <!-- box-link -->
        <a href="{routePath('announcement-index')}" class="box-link"></a>
      </div>
    </div>
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/network-status.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='networkstatustitle'}</h5>
        <!-- box-link -->
        <a href="serverstatus.php" class="box-link"></a>
      </div>
    </div>
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/knowledgebase.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='knowledgebasetitle'}</h5>
        <!-- box-link -->
        <a href="{routePath('knowledgebase-index')}" class="box-link"></a>
      </div>
    </div>
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/downloads.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='downloadstitle'}</h5>
        <!-- box-link -->
        <a href="{routePath('download-index')}" class="box-link"></a>
      </div>
    </div>
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/ticket.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='homepage.submitTicket'}</h5>
        <!-- box-link -->
        <a href="submitticket.php" class="box-link"></a>
      </div>
    </div>
  </div>
</div>
</div>