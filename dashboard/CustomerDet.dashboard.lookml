- dashboard: apollo_customer_segmentation
  title: Apollo Customer Segmentation
  auto_run: true
  layout: newspaper
  elements:
  - title: Orders 2019
    name: Orders 2019
    model: looker_test_health
    explore: customer_transactions
    type: single_value
    fields: [customer_transactions.Years, customer_transactions.count]
    sorts: [customer_transactions.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${customer_transactions.count}/offset(${customer_transactions.count},1)\
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
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 3
    col: 11
    width: 5
    height: 4
  - title: Category Wise Sales
    name: Category Wise Sales
    model: looker_test_health
    explore: customer_transactions
    type: looker_pie
    fields: [customer_transactions.category, customer_transactions.sales]
    sorts: [customer_transactions.sales desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_types: {}
    listen:
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 7
    col: 15
    width: 9
    height: 6
  - title: Region Wise Sales
    name: Region Wise Sales
    model: looker_test_health
    explore: customer_transactions
    type: looker_grid
    fields: [customer_transactions.region, customer_transactions.sales]
    filters:
      customer_transactions.order_date: 2019/10/01 to 2019/12/31
    sorts: [customer_transactions.sales desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      customer_transactions.sales:
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
      customer_transactions.sales: $0.00, "K"
    series_types: {}
    listen:
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 7
    col: 0
    width: 8
    height: 6
  - title: Quantity 2019
    name: Quantity 2019
    model: looker_test_health
    explore: customer_transactions
    type: single_value
    fields: [customer_transactions.Years, customer_transactions.quantity]
    sorts: [customer_transactions.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${customer_transactions.quantity}-offset(${customer_transactions.quantity},1)\
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
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 3
    col: 6
    width: 5
    height: 4
  - title: Profit 2019
    name: Profit 2019
    model: looker_test_health
    explore: customer_transactions
    type: single_value
    fields: [customer_transactions.Years, customer_transactions.profit]
    sorts: [customer_transactions.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${customer_transactions.profit}/offset(${customer_transactions.profit},1)\
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
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 3
    col: 16
    width: 8
    height: 4
  - title: Market Order Counts Last Month
    name: Market Order Counts Last Month
    model: looker_test_health
    explore: customer_transactions
    type: looker_area
    fields: [customer_transactions.order_date, customer_transactions.count,
      customer_transactions.market]
    pivots: [customer_transactions.market]
    fill_fields: [customer_transactions.order_date]
    filters:
      customer_transactions.order_quarter: 2019/12/01 to
        2019/12/31
    sorts: [customer_transactions.order_date desc, customer_transactions.market]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Order Counts, orientation: left, series: [{axisId: customer_transactions.count,
            id: "Africa\n - customer_transactions.count",
            name: 'Africa
              '}, {axisId: customer_transactions.count,
            id: "Asia Pacific\n - customer_transactions.count",
            name: 'Asia Pacific
              '}, {axisId: customer_transactions.count,
            id: "Europe\n - customer_transactions.count",
            name: 'Europe
              '}, {axisId: customer_transactions.count,
            id: "LATAM\n - customer_transactions.count",
            name: 'LATAM
              '}, {axisId: customer_transactions.count,
            id: "USCA\n - customer_transactions.count",
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
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 20
    col: 0
    width: 24
    height: 7
  - title: Sales Year Over Year
    name: Sales Year Over Year
    model: looker_test_health
    explore: customer_transactions
    type: looker_line
    fields: [customer_transactions.Years, customer_transactions.Months,
      customer_transactions.sales]
    pivots: [customer_transactions.Years]
    sorts: [customer_transactions.Years 0, customer_transactions.Months]
    limit: 500
    series_types: {}
    hidden_fields: []
    listen:
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 13
    col: 0
    width: 24
    height: 7
  - title: Sales by Category and SubCategory Last Quarter
    name: Sales by Category and SubCategory Last Quarter
    model: looker_test_health
    explore: customer_transactions
    type: looker_grid
    fields: [customer_transactions.category, customer_transactions.sub_category,
      customer_transactions.order_month, customer_transactions.sales]
    pivots: [customer_transactions.order_month]
    fill_fields: [customer_transactions.order_month]
    filters:
      customer_transactions.order_date: 2019/10/01 to 2019/12/31
    sorts: [customer_transactions.order_month desc 0, customer_transactions.category
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
      customer_transactions.category: 110
      customer_transactions.sub_category: 110
      customer_transactions.sales: 150
      customer_transactions.order_month: 150
    series_cell_visualizations:
      customer_transactions.sales:
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
      customer_transactions.sales: $0.00 "K"
    listen:
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 27
    col: 11
    width: 13
    height: 10
  - title: Sales by SubCategory Last Quarter
    name: Sales by SubCategory Last Quarter
    model: looker_test_health
    explore: customer_transactions
    type: looker_column
    fields: [customer_transactions.sub_category, customer_transactions.sales,
      customer_transactions.order_month]
    pivots: [customer_transactions.sub_category]
    fill_fields: [customer_transactions.order_month]
    filters:
      customer_transactions.order_date: 2019/10/01 to 2019/12/31
    sorts: [customer_transactions.order_month desc, customer_transactions.sub_category]
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
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 27
    col: 0
    width: 11
    height: 10
  - title: Top 10 Customers
    name: Top 10 Customers
    model: looker_test_health
    explore: customer_transactions
    type: looker_grid
    fields: [customer_transactions.sales, customer_transactions.customer_name]
    filters:
      customer_transactions.order_date: 2019/10/01 to 2019/12/31
    sorts: [customer_transactions.sales desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_cell_visualizations:
      customer_transactions.sales:
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
      customer_transactions.sales: $0.00, "K"
    series_types: {}
    listen:
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 7
    col: 8
    width: 7
    height: 6
  - title: Sales 2019
    name: Sales 2019
    model: looker_test_health
    explore: customer_transactions
    type: single_value
    fields: [customer_transactions.Years, customer_transactions.sales]
    sorts: [customer_transactions.Years desc]
    limit: 500
    dynamic_fields: [{table_calculation: vs_lastyear, label: Vs LastYear, expression: "${customer_transactions.sales}/offset(${customer_transactions.sales},1)\
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
      Segment: customer_transactions.segment
      Region: customer_transactions.region
      Category: customer_transactions.category
      Country: customer_transactions.country
      SubCategory: customer_transactions.sub_category
      CustomerName: customer_transactions.customer_name
    row: 3
    col: 0
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    body_text: <img src="https://storage.googleapis.com/appolo-poc/import-to-CloudSQL/apollo-2.jpeg" width="70%" height="100"/>
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
    explore: customer_transactions
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [customer_transactions.Months, customer_transactions.market,
      customer_transactions.region, customer_transactions.profit]
    filters:
      customer_transactions.order_date: '2019'
    sorts: [customer_transactions.Months]
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
    explore: customer_transactions
    listens_to_filters: []
    field: customer_transactions.segment
  - name: Region
    title: Region
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: customer_transactions
    listens_to_filters: []
    field: customer_transactions.region
  - name: Category
    title: Category
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: customer_transactions
    listens_to_filters: []
    field: customer_transactions.category
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: customer_transactions
    listens_to_filters: []
    field: customer_transactions.country
  - name: SubCategory
    title: SubCategory
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: customer_transactions
    listens_to_filters: []
    field: customer_transactions.sub_category
  - name: CustomerName
    title: CustomerName
    type: field_filter
    default_value: "-EMPTY"
    allow_multiple_values: true
    required: false
    model: looker_test_health
    explore: customer_transactions
    listens_to_filters: []
    field: customer_transactions.customer_name
