$(function() {

    /*----------------------------------------------------------
     Table
     -----------------------------------------------------------*/
    if ($("#supplies-table").length) {
        $("#supplies-table").bootgrid({
            templates: {
                search: ''
            },
            rowCount: [4],
            css: {
                icon: 'zmdi icon',
                iconColumns: 'zmdi-view-module',
                iconDown: 'zmdi-sort-amount-desc',
                iconRefresh: 'zmdi-refresh',
                iconUp: 'zmdi-sort-amount-asc'
            }
        });

        $("#search-box").on('keyup', function () {
            $("#supplies-table").bootgrid("search", this.value);
        });
    }

    if ($("#labors-table").length) {
        $("#labors-table").bootgrid({
            templates: {
                search: ''
            },
            rowCount: [4],
            css: {
                icon: 'zmdi icon',
                iconColumns: 'zmdi-view-module',
                iconDown: 'zmdi-sort-amount-desc',
                iconRefresh: 'zmdi-refresh',
                iconUp: 'zmdi-sort-amount-asc'
            }
        });

        $("#search-box").on('keyup', function () {
            $("#labors-table").bootgrid("search", this.value);
        });
    }

    if ($("#productions-table").length) {
        $("#productions-table").bootgrid({
            templates: {
                search: ''
            },
            css: {
                icon: 'zmdi icon',
                iconColumns: 'zmdi-view-module',
                iconDown: 'zmdi-sort-amount-desc',
                iconRefresh: 'zmdi-refresh',
                iconUp: 'zmdi-sort-amount-asc'
            }
        });

        $("#search-box").on('keyup', function () {
            $("#productions-table").bootgrid("search", this.value);
        });
    }

    /*----------------------------------------------------------
     Field Info Comboboxes
     -----------------------------------------------------------*/

    if($('.field-info-chosen')[0]) {
        $('.field-info-chosen').chosen({
            allow_single_deselect: true
        });
    }

    /*----------------------------------------------------------
     Weather Widget
     -----------------------------------------------------------*/
    if ($('#weather-info-widget')[0]) {
        $.simpleWeather({
            location: 'Solis, Buenos Aires, Argentina',
            woeid: '',
            unit: 'c',
            success: function(weather) {
                html = '<div class="weather-status">'+weather.temp+'&deg;'+weather.units.temp+'</div>';
                html += '<ul class="weather-info"><li>'+weather.city+', '+weather.region+'</li>';
                html += '<li class="currently">'+weather.currently+'</li></ul>';
                html += '<div class="weather-icon wi-'+weather.code+'"></div>';
                html += '<div class="dw-footer"><div class="weather-list tomorrow">';
                html += '<span class="weather-list-icon wi-'+weather.forecast[2].code+'"></span><span>'+weather.forecast[1].high+'/'+weather.forecast[1].low+'</span><span>'+weather.forecast[1].text+'</span>';
                html += '</div>';
                html += '<div class="weather-list after-tomorrow">';
                html += '<span class="weather-list-icon wi-'+weather.forecast[2].code+'"></span><span>'+weather.forecast[2].high+'/'+weather.forecast[2].low+'</span><span>'+weather.forecast[2].text+'</span>';
                html += '</div></div>';
                $("#weather-info-widget").html(html);
            },
            error: function(error) {
                $("#weather-info-widget").html('<p>'+error+'</p>');
            }
        });
    }
});