- dashboard: customer_segmentation
  title: Customer Segmentation
  auto_run: true
  layout: newspaper
  elements:
  - title: Orders 2019
    name: Orders 2019
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: single_value
    fields: [apollo_playbook_customer_transactions_reporting.Years, apollo_playbook_customer_transactions_reporting.count]
    sorts: [apollo_playbook_customer_transactions_reporting.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${apollo_playbook_customer_transactions_reporting.count}/offset(${apollo_playbook_customer_transactions_reporting.count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 3
    col: 11
    width: 5
    height: 4
  - title: Category Wise Sales
    name: Category Wise Sales
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_pie
    fields: [apollo_playbook_customer_transactions_reporting.category, apollo_playbook_customer_transactions_reporting.sales]
    sorts: [apollo_playbook_customer_transactions_reporting.sales desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 7
    col: 15
    width: 9
    height: 6
  - title: Region Wise Sales
    name: Region Wise Sales
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_grid
    fields: [apollo_playbook_customer_transactions_reporting.region, apollo_playbook_customer_transactions_reporting.sales]
    filters:
      apollo_playbook_customer_transactions_reporting.order_date: 2019/10/01 to 2019/12/31
    sorts: [apollo_playbook_customer_transactions_reporting.sales desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      apollo_playbook_customer_transactions_reporting.sales:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      apollo_playbook_customer_transactions_reporting.sales: $0.00, "K"
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 7
    col: 0
    width: 8
    height: 6
  - title: Quantity 2019
    name: Quantity 2019
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: single_value
    fields: [apollo_playbook_customer_transactions_reporting.Years, apollo_playbook_customer_transactions_reporting.quantity]
    sorts: [apollo_playbook_customer_transactions_reporting.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${apollo_playbook_customer_transactions_reporting.quantity}-offset(${apollo_playbook_customer_transactions_reporting.quantity},1)\
          \ - 1", value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 3
    col: 6
    width: 5
    height: 4
  - title: Profit 2019
    name: Profit 2019
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: single_value
    fields: [apollo_playbook_customer_transactions_reporting.Years, apollo_playbook_customer_transactions_reporting.profit]
    sorts: [apollo_playbook_customer_transactions_reporting.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${apollo_playbook_customer_transactions_reporting.profit}/offset(${apollo_playbook_customer_transactions_reporting.profit},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 3
    col: 16
    width: 8
    height: 4
  - title: Market Order Counts Last Month
    name: Market Order Counts Last Month
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_area
    fields: [apollo_playbook_customer_transactions_reporting.order_date, apollo_playbook_customer_transactions_reporting.count,
      apollo_playbook_customer_transactions_reporting.market]
    pivots: [apollo_playbook_customer_transactions_reporting.market]
    fill_fields: [apollo_playbook_customer_transactions_reporting.order_date]
    filters:
      apollo_playbook_customer_transactions_reporting.order_quarter: 2019/12/01 to
        2019/12/31
    sorts: [apollo_playbook_customer_transactions_reporting.order_date desc, apollo_playbook_customer_transactions_reporting.market]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Order Counts, orientation: left, series: [{axisId: apollo_playbook_customer_transactions_reporting.count,
            id: "Africa\n - apollo_playbook_customer_transactions_reporting.count",
            name: 'Africa
              '}, {axisId: apollo_playbook_customer_transactions_reporting.count,
            id: "Asia Pacific\n - apollo_playbook_customer_transactions_reporting.count",
            name: 'Asia Pacific
              '}, {axisId: apollo_playbook_customer_transactions_reporting.count,
            id: "Europe\n - apollo_playbook_customer_transactions_reporting.count",
            name: 'Europe
              '}, {axisId: apollo_playbook_customer_transactions_reporting.count,
            id: "LATAM\n - apollo_playbook_customer_transactions_reporting.count",
            name: 'LATAM
              '}, {axisId: apollo_playbook_customer_transactions_reporting.count,
            id: "USCA\n - apollo_playbook_customer_transactions_reporting.count",
            name: 'USCA
              '}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    swap_axes: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 20
    col: 0
    width: 24
    height: 7
  - title: Sales Year Over Year
    name: Sales Year Over Year
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_line
    fields: [apollo_playbook_customer_transactions_reporting.Years, apollo_playbook_customer_transactions_reporting.Months,
      apollo_playbook_customer_transactions_reporting.sales]
    pivots: [apollo_playbook_customer_transactions_reporting.Years]
    sorts: [apollo_playbook_customer_transactions_reporting.Years 0, apollo_playbook_customer_transactions_reporting.Months]
    limit: 500
    series_types: {}
    hidden_fields: []
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 13
    col: 0
    width: 24
    height: 7
  - title: Sales by Category and SubCategory Last Quarter
    name: Sales by Category and SubCategory Last Quarter
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_grid
    fields: [apollo_playbook_customer_transactions_reporting.category, apollo_playbook_customer_transactions_reporting.sub_category,
      apollo_playbook_customer_transactions_reporting.order_month, apollo_playbook_customer_transactions_reporting.sales]
    pivots: [apollo_playbook_customer_transactions_reporting.order_month]
    fill_fields: [apollo_playbook_customer_transactions_reporting.order_month]
    filters:
      apollo_playbook_customer_transactions_reporting.order_date: 2019/10/01 to 2019/12/31
    sorts: [apollo_playbook_customer_transactions_reporting.order_month desc 0, apollo_playbook_customer_transactions_reporting.category
        desc]
    limit: 500
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_column_widths:
      apollo_playbook_customer_transactions_reporting.category: 110
      apollo_playbook_customer_transactions_reporting.sub_category: 110
      apollo_playbook_customer_transactions_reporting.sales: 150
      apollo_playbook_customer_transactions_reporting.order_month: 150
    series_cell_visualizations:
      apollo_playbook_customer_transactions_reporting.sales:
        is_active: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_background_color: ''
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      apollo_playbook_customer_transactions_reporting.sales: $0.00 "K"
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 27
    col: 11
    width: 13
    height: 10
  - title: Sales by SubCategory Last Quarter
    name: Sales by SubCategory Last Quarter
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_column
    fields: [apollo_playbook_customer_transactions_reporting.sub_category, apollo_playbook_customer_transactions_reporting.sales,
      apollo_playbook_customer_transactions_reporting.order_month]
    pivots: [apollo_playbook_customer_transactions_reporting.sub_category]
    fill_fields: [apollo_playbook_customer_transactions_reporting.order_month]
    filters:
      apollo_playbook_customer_transactions_reporting.order_date: 2019/10/01 to 2019/12/31
    sorts: [apollo_playbook_customer_transactions_reporting.order_month desc, apollo_playbook_customer_transactions_reporting.sub_category]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    label_value_format: $0.00 "K"
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 27
    col: 0
    width: 11
    height: 10
  - title: Top 10 Customers
    name: Top 10 Customers
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: looker_grid
    fields: [apollo_playbook_customer_transactions_reporting.sales, apollo_playbook_customer_transactions_reporting.customer_name]
    filters:
      apollo_playbook_customer_transactions_reporting.order_date: 2019/10/01 to 2019/12/31
    sorts: [apollo_playbook_customer_transactions_reporting.sales desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      apollo_playbook_customer_transactions_reporting.sales:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      apollo_playbook_customer_transactions_reporting.sales: $0.00, "K"
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 7
    col: 8
    width: 7
    height: 6
  - title: Sales 2019
    name: Sales 2019
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: single_value
    fields: [apollo_playbook_customer_transactions_reporting.Years, apollo_playbook_customer_transactions_reporting.sales]
    sorts: [apollo_playbook_customer_transactions_reporting.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${apollo_playbook_customer_transactions_reporting.sales}/offset(${apollo_playbook_customer_transactions_reporting.sales},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    value_format: ''
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#000000",
        font_color: "#ffffff", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Segment: apollo_playbook_customer_transactions_reporting.segment
      Region: apollo_playbook_customer_transactions_reporting.region
      Category: apollo_playbook_customer_transactions_reporting.category
      Country: apollo_playbook_customer_transactions_reporting.country
      SubCategory: apollo_playbook_customer_transactions_reporting.sub_category
      CustomerName: apollo_playbook_customer_transactions_reporting.customer_name
    row: 3
    col: 0
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    body_text: ''
    #<img src="https://storage.googleapis.com/appolo-poc/import-to-CloudSQL/apollo-2.jpeg" width="70%" height="100"/>
    row: 0
    col: 0
    width: 8
    height: 3
  - name: 'Title'
    type: text
    body_text: <b><font color="#1E8449" size="5.5">Customer Segmentation</font></b>
    row: 0
    col: 9
    width: 9
    height: 3
  - name: 'Looker-Logo'
    type: text
    body_text: <img src="https://storage.googleapis.com/appolo-poc/import-to-CloudSQL/looker_logo_meta_v0003.jpeg"
      width="90%" height="100"/>
    row: 0
    col: 20
    width: 4
    height: 3
  - title: Profit Flow Across Market and Region for 2019
    name: Profit Flow Across Market and Region for 2019
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [apollo_playbook_customer_transactions_reporting.Months, apollo_playbook_customer_transactions_reporting.market,
      apollo_playbook_customer_transactions_reporting.region, apollo_playbook_customer_transactions_reporting.profit]
    filters:
      apollo_playbook_customer_transactions_reporting.order_date: '2019'
    sorts: [apollo_playbook_customer_transactions_reporting.Months]
    limit: 500
    series_types: {}
    listen: {}
    row: 37
    col: 0
    width: 24
    height: 10
  filters:
  - name: Segment
    title: Segment
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    listens_to_filters: []
    field: apollo_playbook_customer_transactions_reporting.segment
  - name: Region
    title: Region
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    listens_to_filters: []
    field: apollo_playbook_customer_transactions_reporting.region
  - name: Category
    title: Category
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    listens_to_filters: []
    field: apollo_playbook_customer_transactions_reporting.category
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    listens_to_filters: []
    field: apollo_playbook_customer_transactions_reporting.country
  - name: SubCategory
    title: SubCategory
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    listens_to_filters: []
    field: apollo_playbook_customer_transactions_reporting.sub_category
  - name: CustomerName
    title: CustomerName
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: apollo_playbook_customer_transactions_reporting
    listens_to_filters: []
    field: apollo_playbook_customer_transactions_reporting.customer_name
