(function(jQuery) {
	jQuery(document).ready(function() {

		/*
		Inputmask.extendDefaults({
			'autoUnmask' : true
		});
		*/

		jQuery(".inputmask").each(function(index) {
			var $input = jQuery(this);
			var options = {
				removeMaskOnSubmit : true
			};

			var pattern = $input.attr("data-inputmask-mask");
			if (pattern) {
				options.mask = pattern;
			} else {
				var alias = $input.attr("data-inputmask-alias");
				if (alias) {
					options.alias = alias;
				} else {
					throw "missing input initialization value on (id='"+this.id+"' name='"+this.name+"')";
				}
			}
			$input.inputmask(options);
		});
	});
})(jQuery);


$('.datetime-local').inputmask('99/99/9999 - 99:99', { numericInput: false, autoUnmask : false });
$('.datetimepicker').inputmask('99/99/9999 - 99:99', { numericInput: false, autoUnmask : false });
$('#cnpj').inputmask('99.999.999/9999-99', { numericInput: false, autoUnmask : false });
$('#cpf').inputmask('999.999.999-99', { numericInput: false, autoUnmask : false,  });
$('#rg').inputmask('99.999.999-99', { numericInput: false, autoUnmask : false,  });
$('#dataNascimento').inputmask('99/99/9999', { numericInput: false, autoUnmask : false });
$('#placa').inputmask('AAA-9999', { numericInput: false, autoUnmask : false });


/*
$('.className').inputmask('$ 999 999 999.99', { numericInput: false, autoUnmask : false });
$('#idName').inputmask('$ 999 999 999.99', { numericInput: false, autoUnmask : false });
*/



