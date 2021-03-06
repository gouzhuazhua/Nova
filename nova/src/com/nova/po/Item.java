package com.nova.po;

import java.math.BigDecimal;

public class Item {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.id
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.itemname
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private String itemname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.itemaddress
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private String itemaddress;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.itemlevel
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private String itemlevel;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.itemabstract
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private String itemabstract;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.itemprice
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private BigDecimal itemprice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.itemcategory
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private Integer itemcategory;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.isshowed
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private Integer isshowed;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column item_list.iteminfo
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    private String iteminfo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.id
     *
     * @return the value of item_list.id
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.id
     *
     * @param id the value for item_list.id
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.itemname
     *
     * @return the value of item_list.itemname
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public String getItemname() {
        return itemname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.itemname
     *
     * @param itemname the value for item_list.itemname
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.itemaddress
     *
     * @return the value of item_list.itemaddress
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public String getItemaddress() {
        return itemaddress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.itemaddress
     *
     * @param itemaddress the value for item_list.itemaddress
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setItemaddress(String itemaddress) {
        this.itemaddress = itemaddress == null ? null : itemaddress.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.itemlevel
     *
     * @return the value of item_list.itemlevel
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public String getItemlevel() {
        return itemlevel;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.itemlevel
     *
     * @param itemlevel the value for item_list.itemlevel
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setItemlevel(String itemlevel) {
        this.itemlevel = itemlevel == null ? null : itemlevel.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.itemabstract
     *
     * @return the value of item_list.itemabstract
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public String getItemabstract() {
        return itemabstract;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.itemabstract
     *
     * @param itemabstract the value for item_list.itemabstract
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setItemabstract(String itemabstract) {
        this.itemabstract = itemabstract == null ? null : itemabstract.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.itemprice
     *
     * @return the value of item_list.itemprice
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public BigDecimal getItemprice() {
        return itemprice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.itemprice
     *
     * @param itemprice the value for item_list.itemprice
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setItemprice(BigDecimal itemprice) {
        this.itemprice = itemprice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.itemcategory
     *
     * @return the value of item_list.itemcategory
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public Integer getItemcategory() {
        return itemcategory;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.itemcategory
     *
     * @param itemcategory the value for item_list.itemcategory
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setItemcategory(Integer itemcategory) {
        this.itemcategory = itemcategory;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.isshowed
     *
     * @return the value of item_list.isshowed
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public Integer getIsshowed() {
        return isshowed;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.isshowed
     *
     * @param isshowed the value for item_list.isshowed
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setIsshowed(Integer isshowed) {
        this.isshowed = isshowed;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column item_list.iteminfo
     *
     * @return the value of item_list.iteminfo
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public String getIteminfo() {
        return iteminfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column item_list.iteminfo
     *
     * @param iteminfo the value for item_list.iteminfo
     *
     * @mbg.generated Fri Jan 12 13:31:31 CST 2018
     */
    public void setIteminfo(String iteminfo) {
        this.iteminfo = iteminfo == null ? null : iteminfo.trim();
    }
}