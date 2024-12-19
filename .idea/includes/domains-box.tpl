
<!-- :: domains-section :: -->
<div class="domains-section bg-1 py-90">
  <div class="container">
    <div class="row" data-gap-y="30px">
      {if $registerdomainenabled}
        <!-- col -->
        <div class="col-md-6">
          <!-- domain-card -->
          <div class="domain-card d-flex align-items-center">
            <div class="row w-100 mx-0 align-items-center" data-gap-y="30px">
              <div class="col-lg-8 text-lg-left text-center">
                <h3 class="domain-card-title">{lang key='orderregisterdomain'}</h3>
                <p class="domain-card-text mb-0">{lang key='secureYourDomain'}</p>
              </div>
              <div class="col-lg-4 text-lg-right text-center">
                <a href="{$WEB_ROOT}/cart.php?a=add&domain=register"
                  class="domain-card-link d-inline-flex align-items-center justify-content-center">
                  <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/right-arrow-w.png" class="icon img-fluid" alt="#">
                </a>
              </div>
            </div>
          </div>
        </div>
      {/if}
      {if $transferdomainenabled}
        <!-- col -->
        <div class="col-md-6">
          <!-- domain-card -->
          <div class="domain-card d-flex align-items-center">
            <div class="row w-100 mx-0 align-items-center" data-gap-y="30px">
              <div class="col-lg-8 text-lg-left text-center">
                <h3 class="domain-card-title">{lang key='transferYourDomain'}</h3>
                <p class="domain-card-text mb-0">{lang key='transferExtend'}</p>
              </div>
              <div class="col-lg-4 text-lg-right text-center">
                <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer"
                  class="domain-card-link d-inline-flex align-items-center justify-content-center">
                  <img src="{$WEB_ROOT}/templates/hostx_whmcs/images/icons/right-arrow-w.png" class="icon img-fluid" alt="#">
                </a>
              </div>
            </div>
          </div>
        </div>
      {/if}
    </div>
  </div>
</div>