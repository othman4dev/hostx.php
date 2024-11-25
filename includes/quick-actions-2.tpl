<!-- actions-section -->
<div class="actions-section py-90 bg-1">
<div class="container">
  <!-- se-head -->
  <div class="se-head">
    <h3 class="se-title-1">{lang key="clientHomePanels.quickActions"}</h3>
    <h4 class="se-title-2">{lang key="homepage.yourAccount"}</h4>
  </div>
  <!-- row -->
  <div class="row text-center" data-gap-y="30px">
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/account.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='homepage.yourAccount'}</h5>
        <!-- box-link -->
        <a href="clientarea.php" class="box-link"></a>
      </div>
    </div>
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/premium-service.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='homepage.manageServices'}</h5>
        <!-- box-link -->
        <a href="clientarea.php?action=services" class="box-link"></a>
      </div>
    </div>
    {if $registerdomainenabled || $transferdomainenabled || $numberOfDomains}
      <!-- col -->
      <div class="col-xl col-lg-3 col-md-4 col-sm-6">
        <!-- action-box -->
        <div class="action-box">
          <!-- box-img -->
          <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/world-wide-web.png" class="box-img img-fluid" alt="#">
          <!-- box-text -->
          <h5 class="box-text mb-0">{lang key='homepage.manageDomains'}</h5>
          <!-- box-link -->
          <a href="clientarea.php?action=domains" class="box-link"></a>
        </div>
      </div>
    {/if}
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/support-requests.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='homepage.supportRequests'}</h5>
        <!-- box-link -->
        <a href="supporttickets.php" class="box-link"></a>
      </div>
    </div>
    <!-- col -->
    <div class="col-xl col-lg-3 col-md-4 col-sm-6">
      <!-- action-box -->
      <div class="action-box">
        <!-- box-img -->
        <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/actions/secure-payment.png" class="box-img img-fluid" alt="#">
        <!-- box-text -->
        <h5 class="box-text mb-0">{lang key='homepage.makeAPayment'}</h5>
        <!-- box-link -->
        <a href="clientarea.php?action=masspay&all=true" class="box-link"></a>
      </div>
    </div>
  </div>
</div>
</div>