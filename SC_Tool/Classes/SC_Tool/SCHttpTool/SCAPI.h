//
//  SCAPI.h
//  sooc-ios_new
//
//  Created by 郭琦 on 16/6/29.
//  Copyright © 2016年 SOOC. All rights reserved.
//  项目中API的整合管理

#ifndef SCAPI_h
#define SCAPI_h


//=======================
#pragma mark - 服务器API
//=======================

/*获取服务器列表*/
#define API_SEVERLIST @""MAINAPI@"/index.php?m=api&c=Index&a=getSnsList"

/*用户所在服务器列表*/
#define API_LOGINLIST @""MAINAPI@"/index.php?m=api&c=User&a=getRegList"




//=======================
#pragma mark - 节点API
//=======================

//节点API版本号
#define API_VERSION_BASE @"2"

/*登录按钮的节点*/
#define API_LoginClicked @"Oauth/authorize"

/*忘记密码的服务器列表*/
#define API_ForgetList @"User/finduser"

/*密码找回*/
#define API_FindPwd @"User/sms"

/*手机验证码校验*/
#define API_Sms @"User/checktel"

/*重设密码*/
#define API_ResigerPwd @"User/resetuser"

//注册接口
#define API_regAPI @"User/register"

//请求验证码(使用时 前面拼节点)
#define API_smsAPI @"User/sms"

//验证邮箱 以及 验证身份信息(使用时 前面拼节点)
#define API_emailAPI @"User/checkMember"

/*获取密保问题*/
#define API_safeQuestion @"User/getquestion"

/*验证密保问题*/
#define API_yanzhengQuestion @"User/checkquestion"

//修改密码
#define API_ChangePwd @"User/changePassword"

/*我的笔记*/
#define API_NoteAPI @"Course/selectCourses"

/*课程分类*/
#define API_AllCourse @"Course/departMenu"

/*全部课程*/
#define API_allNewCourse @"Course/allNewCourse"

/*首页轮播图*/
#define API_lunboImage @"Sooc/index_tj"

/*课程简介*/
#define API_classDetail @"Course/intro"

/*课程列表*/
#define API_classListDetail @"Course/newCatalog"

/*获取个人信息*/
#define API_UserInfo @"User/Show"

/*修改个人信息*/
#define API_updateinfo @"User/updateinfo"

/*讨论通知*/
#define API_myDiscuss @"User/myDiscuss"

/*历史签到*/
#define API_WriteClass @"Sign/courseList"

/*签到详情*/
#define API_historyDetail @"Sign/historyDetail"

/*缺席人数*/
#define API_absentNum @"Sign/notInclass"

/*课程内学生名单*/
#define API_studentList @"Sign/studentList"

/*课程列表*/
#define API_courseList @"Sign/courseList"

/*创建课堂*/
#define API_createClass @"Sign/createClass"

/*创建课程*/
#define API_createCourse @"Sign/createCourse"

/*获取课堂信息*/
#define API_getClass @"Sign/getClass"

/*今日课堂*/
#define API_todayClass @"Sign/todayClass"

/*签到开关*/
#define API_controlSign @"Sign/controlSign"

/*查看课堂签到情况*/
#define API_todayClassSign @"Sign/todayClassSign"

/*添加学生*/
#define API_addStudent @"Sign/addStudent"

/*删除学生*/
#define API_delStudent @"Sign/delStudent"

/*补签*/
#define API_nextSign @"Sign/nextSign"

/*课程简介*/
#define API_intro @"Course/intro"

/*课程通知*/
#define API_notice @"Course/notice"

/*课程详情*/
#define API_courseInfo @"Course/info"

/*课程笔记*/
#define API_courseNote @"Course/note"

/*笔记点赞*/
#define API_bijiDiznzan @"Course/dianZan"

/*我的消息*/
#define API_myMessage @"User/myMessage"

/*获取全部密保问题*/
#define API_get_question @"User/get_question"

/*设置密保问题*/
#define API_setQuestion @"User/setQuestion"

/*历史课堂*/
#define API_historyClass @"Sign/historyClass"
/*已收藏课程*/
#define API_collectedCourse @"Course/collectionList"
/*已加入课程*/
#define API_addedCourse @"Course/studyingList"

/*删除已收藏课程*/
#define API_deleteCollected @"Course/deleteCollection"

/*获取兑现账号*/
#define API_myAccount @"User/myAccount"

/*获取用户信息*/
#define API_GetInfo @"User/getinfo"

/*获取讨论课程列表法*/
#define API_discusslist @"Course/discusslist"

/*发布讨论*/
#define API_addDiscuss @"Course/addDiscuss"

/*编辑课程*/
#define API_updateCourse @"Sign/updateCourse"

/*删除课程*/
#define API_delCourse @"Sign/delCourse"

/*获取当前系统时间*/
#define API_timeCourse @"Course/time"

/*上课学期*/
#define API_getNowXueqi @"Sign/getNowXueqi"

/*缺席课堂*/
#define API_notComingclass @"Sign/notComingclass"

/*讨论详情*/
#define API_discussInfo @"Course/discussInfo"

/*写笔记*/
#define API_wiritNote @"Course/writeNote"

/*加入某门课程*/
#define API_joinCourse @"Course/joinCourse"

/*回复别人的评论*/
#define API_replyDiscuss @"Course/replyDiscuss"
/*我的学分*/
#define API_myXueFen @"User/myXueFen"

/*退出课程*/
#define API_tuichuCourse @"Course/tuichu"

/*提交反馈*/
#define API_addFeedback @"Feedback/addfeedback"

/*我的反馈*/
#define API_myFeedback @"Feedback/feedbacklist"

/*反馈详情*/
#define API_detailFeedback @"Feedback/feedbackdetail"

/*提交反馈*/
#define API_replyfeedback @"Feedback/replyfeedback"

/*我的积分*/
#define API_myScore @"User/myScore"

/*积分明细*/
#define API_scoreDetail @"User/scoreDetail"

/*提现记录*/
#define API_cashDetail @"User/cashDetail"

/*我的邀请*/
#define API_myInvited @"User/myInvited"

/*收藏课程*/
#define API_addCollection @"Course/addCollection"

/*取消收藏*/
#define API_deleteCollection @"Course/deleteCollection"

/*记录学习*/
#define API_setBehavior @"Course/setBehavior"

/*删除笔记*/
#define API_deleteNote @"Course/deleteNote"
#endif /* SCAPI_h */
