        </section>
    </div>
    {if isset($_c['CompanyFooter'])}
        <footer class="main-footer">
            {$_c['CompanyFooter']}
        </footer>
    {else}
          <footer class="main-footer">
        <div class="pull-right hidden-xs" id="version" onclick="location.href = '{$_url}community#latestVersion';"></div>
        ClerkEx ISP by <a href="https://clerkex.xyz/" rel="nofollow noreferrer noopener"
            target="_blank">ClerkEx</a> &copy; 2023
    </footer>
</div>
    {/if}
</div>

<script src="ui/ui/scripts/jquery.min.js"></script>
<script src="ui/ui/scripts/bootstrap.min.js"></script>
<script src="ui/ui/scripts/adminlte.min.js"></script>

<script src="ui/ui/scripts/plugins/select2.min.js"></script>
<script src="ui/ui/scripts/custom.js"></script>

{if isset($xfooter)}
    {$xfooter}
{/if}

{if $_c['tawkto'] != ''}
    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();
        (function() {
            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src='https://embed.tawk.to/{$_c['tawkto']}';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
    <!--End of Tawk.to Script-->
{/if}

</body>

</html>