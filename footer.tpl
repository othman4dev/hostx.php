    </div>

    </div>
    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
      <div class="d-lg-none sidebar sidebar-secondary">
        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
      </div>
    {/if}
    <div class="clearfix"></div>
    </div>
    </div>
    </section>

    <footer class="theme-footer">
      <!-- footer-top -->
      <div class="footer-top">
        <div class="container">
          <!-- footer-list-group -->
          <div class="footer-list-group">
            <div style="width:40%; display:flex;flex-direction:column;" >
              <div class="icon" style="width:150px;height:100px;background-color:#ddd;"></div>
              <p>
               {$companyname} provides anonymous and secure hosting for various use cases.
              </p>
              <div style="display:flex; align-items:center; gap:10px; height: 40px;">
               
              </div>
            </div>
            <!-- footer-list -->
            <ul class="footer-list list-unstyled">
              <li class="list-title">About {$companyname}</li>
              <li class="list-link"><a href="#">{lang key="footer.aboutUs"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.newsroom"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.investorRelations"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.Careers"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.CorporateResponsibility"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.TrustCenter"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.Legal"}</a></li>
            </ul>
            <!-- footer-list -->
            <ul class="footer-list list-unstyled">
              <li class="list-title">{lang key="footer.HelpCenter"}</li>
              <li class="list-link"><a href="{$WEB_ROOT}/index.php?rp=/knowledgebase">{lang key="footer.HelpCenter"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.Community"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.Blog"}</a></li>
              <li class="list-link"><a href="contact.php">{lang key="footer.ContactUs"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.ReportAbuse"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.Resources"}</a></li>
            </ul>
            <!-- footer-list -->
            <ul class="footer-list list-unstyled">
              <li class="list-title">{lang key="footer.Resources"}</li>
              <li class="list-link"><a href="#">{lang key="footer.Webmail"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.WHOIS"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.MobileApp"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.ICANNConfirmation"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.DesignersDevelopers"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.CorporateDomains"}</a></li>
              <li class="list-link"><a href="#">{lang key="footer.RedeemCode"}</a></li>
            </ul>
          </div>
        </div>
      </div>
      
      <!-- <div class="footer-middle">
        <div class="container">
          <!-- reg-bar -->
          <div class="reg-bar text-md-left text-center">
            <div class="d-lg-flex align-items-center justify-content-between">
              <!-- text -->
              <div class="text">
                <!-- title-4 -->
                <h4 class="title-4">Switch to Pro Plan today and<br>save up to 30% off</h4>
                <!-- para-2 -->
                <p class="para-2">Check which version are available to upgrade to and validate wheter<br>your current subscription is upgradeable.</p>
              </div>
              <!-- buttons -->
              <div class="buttons mt-lg-0 mt-3">
                <a href="{$WEB_ROOT}/index.php?rp=/store" class="theme-btn --fill-primary shadow-off text-uppercase font-500">Upgrade my plan</a>
              </div>
            </div>
          </div>
        </div>
      </div> -->
      <!-- footer-bottom -->
      <div class="footer-bottom">
        <div class="container">
          <!-- content -->
          <div class="content d-flex align-items-start mb-2">
            <!-- logo -->
            <div class="logo mb-lg-0 mb-1">
              <a href="{$WEB_ROOT}">
                {if $assetLogoPath}
                  <img src="{$assetLogoPath}" class="img-fluid" alt="{$companyname}">
                {else}
                  {$companyname}
                {/if}
              </a>
            </div>
            <!-- copyright -->
            <div class="copyright mr-lg-5">
              <!-- links -->
              <ul class="links list-unstyled d-flex align-items-center flex-wrap">
              <li><a href="#">{lang key="footer.TermsofUse"}</a></li>
              <li><a href="#">{lang key="footer.PrivacyPolicy"}</a></li>
              <li><a href="#">{lang key="footer.Trademarks"}</a></li>
              <li><a href="#">{lang key="footer.LicenseAgreements"}</a></li>
              </ul>
              <!-- para-3 -->
              <p class="para-3 text-left">{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>
            </div>
            <!-- social-list -->
            <ul class="social-list list-unstyled d-flex align-items-center justify-content-lg-end justify-content-center ml-lg-auto mt-lg-0 mt-2">
              {include file="$template/includes/social-accounts.tpl"}
            </ul>
          </div>
          <!-- content -->
          <div class="content d-lg-flex align-items-end flex-wrap">
            <!-- para-3 -->
            <p class="para-3">{lang key="footer.text-1"}<br>{lang key="footer.text-2"}</p>
            <!-- sign -->
            <div class="signature ml-auto mt-lg-0 mt-3">
              <p class="para-3">{lang key="footer.developedBy"} <a href="https://bit.ly/niftytheme_In1">{lang key="footer.niftyTheme"}</a></p>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <div id="fullpage-overlay" class="w-hidden">
      <div class="outer-wrapper">
        <div class="inner-wrapper">
          <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
          <br>
          <span class="msg"></span>
        </div>
      </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title"></h5>
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
              <span class="sr-only">{lang key='close'}</span>
            </button>
          </div>
          <div class="modal-body">
            {lang key='loading'}
          </div>
          <div class="modal-footer">
            <div class="float-left loader">
              <i class="fas fa-circle-notch fa-spin"></i>
              {lang key='loading'}
            </div>
            <button type="button" class="btn btn-default" data-dismiss="modal">
              {lang key='close'}
            </button>
            <button type="button" class="btn btn-primary modal-submit">
              {lang key='submit'}
            </button>
          </div>
        </div>
      </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
      <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-lg" role="document">
          <div class="modal-content">
            <div class="modal-body">
              <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>

              {if $languagechangeenabled && count($locales) > 1}
                <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                <div class="row item-selector" data-gap-y="10px">
                  <input type="hidden" name="language" data-current="{$language}" value="{$language}" />
                  {foreach $locales as $locale}
                    <div class="col-4">
                      <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                        {$locale.localisedName}
                      </a>
                    </div>
                  {/foreach}
                </div>
              {/if}
              {if !$loggedin && $currencies}
                <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                <div class="row item-selector" data-gap-y="10px">
                  <input type="hidden" name="currency" data-current="{$activeCurrency.id}" value="">
                  {foreach $currencies as $selectCurrency}
                    <div class="col-4">
                      <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                        {$selectCurrency.prefix} {$selectCurrency.code}
                      </a>
                    </div>
                  {/foreach}
                </div>
              {/if}
            </div>
            <div class="modal-footer">
              <button type="submit" class="theme-btn --fill-primary --btn-size-md">{lang key='apply'}</button>
            </div>
          </div>
        </div>
      </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
      <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
        <i class="fas fa-redo-alt"></i>
        <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
      </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}
    <script src="{assetPath file='bundle.js'}"></script>
    </body>

</html>