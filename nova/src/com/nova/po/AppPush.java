package com.nova.po;

import java.util.Date;

public class AppPush {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column app_push.id
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column app_push.appid
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    private Integer appid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column app_push.title
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    private String title;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column app_push.contents
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    private String contents;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column app_push.url
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    private String url;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column app_push.createtime
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    private Date createtime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column app_push.id
     *
     * @return the value of app_push.id
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column app_push.id
     *
     * @param id the value for app_push.id
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column app_push.appid
     *
     * @return the value of app_push.appid
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public Integer getAppid() {
        return appid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column app_push.appid
     *
     * @param appid the value for app_push.appid
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public void setAppid(Integer appid) {
        this.appid = appid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column app_push.title
     *
     * @return the value of app_push.title
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column app_push.title
     *
     * @param title the value for app_push.title
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column app_push.contents
     *
     * @return the value of app_push.contents
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public String getContents() {
        return contents;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column app_push.contents
     *
     * @param contents the value for app_push.contents
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public void setContents(String contents) {
        this.contents = contents == null ? null : contents.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column app_push.url
     *
     * @return the value of app_push.url
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public String getUrl() {
        return url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column app_push.url
     *
     * @param url the value for app_push.url
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column app_push.createtime
     *
     * @return the value of app_push.createtime
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public Date getCreatetime() {
        return createtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column app_push.createtime
     *
     * @param createtime the value for app_push.createtime
     *
     * @mbg.generated Thu Dec 28 10:01:04 CST 2017
     */
    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}