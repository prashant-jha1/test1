view: customer_test {
  sql_table_name: customer_transactions;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category;;
    drill_fields: [sub_category]
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
    #link: {
    # label: "Customer Deep Dive"
    ##url: "https://mediaagility.looker.com/dashboards/28?CustomerName={{ _filters['apollo_playbook_customer_transactions_reporting.CustomerName'] | url_encode }}"
    #url: "https://mediaagility.looker.com/dashboards/gcp_playbook_looker::customer_deep_dive?CustomerName={{ _filters['gcp_playbook_reporting.CustomerName'] | url_encode }}"
    #icon_url: "https://looker.com/favicon.ico"
    #}
    link: {
      label: "{{value}} Customer Deep Dive"
      #url: "/dashboards/13?brand_analytics?Brand%20Name={{ value | encode_uri }}"
      #url: "https://mediaagility.looker.com/dashboards/13?Brand%20Name={{ value | encode_uri }}"
      url: "https://mediaagility.looker.com/dashboards/gcp_playbook_looker::customer_deep_dive?CustomerName={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  measure: discount {
    type: sum
    value_format_name: usd
    #sql: ${TABLE}.Discount ;;
    drill_fields: [detail*]
    sql: CASE WHEN {{_user_attributes["permission_discount"]}} = 1
          THEN ${TABLE}.Discount
          ELSE
          -1
          END ;;

      html:
          {% if _user_attributes["permission_discount"] == 1 %}
          <a href="#drillmenu" target="_self"> {{ rendered_value }}
          {% else %}
          [Insufficient Permissions]
          {% endif %} ;;
    }

    dimension: market {
      type: string
      sql: ${TABLE}.Market ;;
    }

    dimension_group: order {
      type: time
      timeframes: [
        raw,
        date,
        week,
        month,
        quarter,
        year
      ]
      convert_tz: no
      datatype: date
      sql: ${TABLE}.OrderDate ;;
      drill_fields: [order_month, order_week, order_year]
    }

    dimension: product_name {
      type: string
      sql: ${TABLE}.ProductName ;;
    }

    measure: profit {
      type: sum
      value_format_name: usd
      #sql: ${TABLE}.Profit ;;
      drill_fields: [detail*]
      sql: CASE WHEN {{_user_attributes["permission_discount"]}} = 1
          THEN ${TABLE}.Profit
          ELSE
          -1
          END ;;

        html:
          {% if _user_attributes["permission_discount"] == 1 %}
          <a href="#drillmenu" target="_self"> {{ rendered_value }}
          {% else %}
          [Insufficient Permissions]
          {% endif %} ;;
      }

      measure: quantity {
        type: sum
        sql: ${TABLE}.Quantity ;;
        drill_fields: [detail*]
      }

      dimension: region {
        type: string
        sql: ${TABLE}.Region ;;
        drill_fields: [country, state, city]
      }

      measure: sales {
        type: sum
        value_format_name: usd
        sql: ${TABLE}.Sales ;;
        drill_fields: [detail*]
      }

      dimension: segment {
        type: string
        sql: ${TABLE}.Segment ;;
      }

      dimension_group: ship {
        type: time
        timeframes: [
          raw,
          date,
          week,
          month,
          quarter,
          year
        ]
        convert_tz: no
        datatype: date
        sql: ${TABLE}.ShipDate ;;
        drill_fields: [ship_month, ship_week, ship_year]
      }

      dimension: ship_mode {
        type: string
        sql: ${TABLE}.ShipMode ;;
      }

      measure: shipping_cost {
        type: sum
        value_format_name: usd
        sql: ${TABLE}.ShippingCost ;;
        drill_fields: [detail*]
      }

      dimension: state {
        type: string
        sql: ${TABLE}.State ;;
      }

      dimension: sub_category {
        type: string
        sql: ${TABLE}.SubCategory ;;
        drill_fields: [product_name, customer_name]
      }

      dimension: Years{
        #hidden: yes
        type: number
        sql: EXTRACT(year from ${TABLE}.OrderDate);;
      }

      dimension: Months {
        ##sql: EXTRACT(month from ${TABLE}.OrderDate);;
        sql: Concat(LPAD(Cast(EXTRACT(month from ${TABLE}.OrderDate) as string),2,"0"),"-",FORMAT_DATE("%b",${TABLE}.OrderDate));;
      }

      measure: count {
        type: count
        drill_fields: [detail*]
      }

      ## Sets ##

      set: detail {
        fields: [customer_name, product_name, category, sub_category, order_date, country, region, segment]
      }

    }
