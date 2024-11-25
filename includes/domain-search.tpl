{* tlds-items-section *}
{if $featuredTlds}
    <div class="tlds-items-section">
      <div class="container">
        <!-- row -->
        <div class="row align-items-center">
          <!-- col -->
          <div class="col-xl-4 mb-xl-3 mb-4 text-xl-left text-center">
            <h2 class="section-title mb-1">
              {lang key="search"}
              <br/>
              {lang key="Your Domain"}
              <br/>
              <span class="pri-font pri-color">{lang key="nameRightNow"}</span>
            </h2>
            <p class="section-para">{lang key="secureYourBrand"}</p>
          </div>
          <!-- col -->
          <div class="col-xl-8">
            <!-- boxes -->
            <div class="boxes">
              <!-- row -->
              <div class="row small-lg-gutters">
                {include file="$template/includes/tlds.tpl"}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
{/if}