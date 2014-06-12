{foreach from=$universalpay item=ps}
	<div class="payment_module">
		<a href="{if !$universalpay_onepage}{$this_path_ssl}payment.php?id_universalpay_system={$ps.id_universalpay_system}{else}#{/if}" title="{$ps.name}" class="universalpay">
			<table>
      <tr>
      <td style="width:45px; padding-top: 4px;">
        
        <img src="http://prsteny-prstynky.cz/img/kolecko.png" />
        
			</td>
      <td>{$ps.description_short}<br/></td>
      </tr>
      </table>
		</a>
		{if $universalpay_onepage}
		<br/>
		<form action="{$this_path_ssl}validation.php" method="post" class="universalpay_hidden">
		<fieldset> 
			{$ps.description}    
      
     
      
			<p>
				<b>{l s='Potvrďte vaši objednávku stiskem tlačítka \'Potvrdit objednávku\'' mod='universalpay'}.</b>
			</p>
			<p class="cart_navigation" style="text-align:center;">
				<input type="hidden" name="id_universalpay_system" value="{$ps.id_universalpay_system}" />
				<input type="submit" name="submit" value="{l s='Potvrdit objednávku' mod='universalpay'}" class="button_large" style="float:none;" />
			</p>
		</fieldset>
		</form>
		{/if}
	</div>
{/foreach}
{if $universalpay_onepage}
<script type="text/javascript">
	{literal}
	$(document).ready(function(){
		$('.universalpay_hidden').hide();
		$('.universalpay').click(function(){
			$('.universalpay_hidden').hide();
			$(this).parent().find('.universalpay_hidden').show();
			return false;
		});
	});
	{/literal}
</script>
{/if}
