/*
 Navicat Premium Data Transfer

 Source Server         : mongo-pc
 Source Server Type    : MongoDB
 Source Server Version : 40010
 Source Host           : localhost:27017
 Source Schema         : yun-blog

 Target Server Type    : MongoDB
 Target Server Version : 40010
 File Encoding         : 65001

 Date: 20/06/2019 20:14:46
*/


// ----------------------------
// Collection structure for articles
// ----------------------------
db.getCollection("articles").drop();
db.createCollection("articles");
db.getCollection("articles").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of articles
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("articles").insert([ {
    _id: ObjectId("5d0b35456252e43ce4b260c4"),
    meta: {
        views: NumberInt("5"),
        likes: NumberInt("1"),
        comments: NumberInt("2")
    },
    keyword: [
        "白云",
        "霓虹",
        "五行",
        "古诗"
    ],
    desc: "它是白云莫闲的起源",
    numbers: "20",
    "img_url": "https://vivi98.top/BigPhoto/JeyChou.PNG",
    type: NumberInt("1"),
    state: NumberInt("1"),
    origin: NumberInt("0"),
    tags: [
        ObjectId("5d0b374f6252e43ce4b260c5")
    ],
    comments: [
        ObjectId("5d0b4c986252e43ce4b260ce")
    ],
    category: [
        ObjectId("5d0b37e26252e43ce4b260c6")
    ],
    title: "白云莫闲的来源",
    author: "Yun MoXian",
    content: "我欲穿花寻路，直入白云深处，浩气展虹霓。",
    "like_users": [
        {
            name: "Yun Moxian",
            type: NumberInt("1"),
            introduce: "I am Yun Moxian.",
            avatar: "https://vivi98.top/Joliven/dog.jpg",
            _id: ObjectId("5d0b6802e47b123bc4044b55"),
            id: ObjectId("5d0b47296252e43ce4b260ca"),
            "create_time": ISODate("2019-06-20T08:43:21.791Z")
        }
    ],
    "create_time": ISODate("2019-06-20T07:27:01.275Z"),
    "update_time": ISODate("2019-06-20T07:27:01.275Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for categories
// ----------------------------
db.getCollection("categories").drop();
db.createCollection("categories");
db.getCollection("categories").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of categories
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("categories").insert([ {
    _id: ObjectId("5d0b37e26252e43ce4b260c6"),
    desc: "关于博主的分类",
    name: "博主",
    "create_time": ISODate("2019-06-20T07:38:10.247Z"),
    "update_time": ISODate("2019-06-20T07:38:10.247Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for comments
// ----------------------------
db.getCollection("comments").drop();
db.createCollection("comments");
db.getCollection("comments").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of comments
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("comments").insert([ {
    _id: ObjectId("5d0b4c986252e43ce4b260ce"),
    user: {
        name: "Joliven",
        type: NumberInt("0"),
        avatar: "https://vivi98.top/%E5%8D%B0%E7%AB%A0/%E7%99%BD%E4%BA%91%E8%8E%AB%E9%97%B2/baiyunmoxian.png",
        "user_id": ObjectId("5d0b29a31880c33e20ec361b")
    },
    "is_top": false,
    likes: NumberInt("0"),
    state: NumberInt("1"),
    "is_handle": NumberInt("2"),
    "article_id": ObjectId("5d0b35456252e43ce4b260c4"),
    content: "我自认为 logo 挺好看的！",
    "user_id": ObjectId("5d0b29a31880c33e20ec361b"),
    "other_comments": [
        {
            user: {
                name: "Yun Moxian",
                type: NumberInt("1"),
                avatar: "https://vivi98.top/Joliven/dog.jpg",
                "user_id": ObjectId("5d0b47296252e43ce4b260ca")
            },
            "to_user": {
                name: "Joliven",
                type: NumberInt("1"),
                avatar: "https://vivi98.top/%E5%8D%B0%E7%AB%A0/%E7%99%BD%E4%BA%91%E8%8E%AB%E9%97%B2/baiyunmoxian.png",
                "user_id": ObjectId("5d0b29a31880c33e20ec361b")
            },
            likes: NumberInt("0"),
            state: NumberInt("1"),
            _id: ObjectId("5d0b56f261aef6480c6ffb51"),
            content: "我也这么觉得诶",
            "create_time": ISODate("2019-06-20T09:50:42.128Z")
        }
    ],
    "create_time": ISODate("2019-06-20T09:06:32.009Z"),
    "update_time": ISODate("2019-06-20T09:06:32.009Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for identitycounters
// ----------------------------
db.getCollection("identitycounters").drop();
db.createCollection("identitycounters");

// ----------------------------
// Documents of identitycounters
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("identitycounters").insert([ {
    _id: ObjectId("5d0b25cb1880c33e20ec3613"),
    count: NumberInt("1"),
    model: "Article",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3612"),
    count: NumberInt("2"),
    model: "User",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3618"),
    count: NumberInt("1"),
    model: "Category",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3614"),
    count: NumberInt("1"),
    model: "Comment",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3615"),
    count: NumberInt("1"),
    model: "Message",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3617"),
    count: NumberInt("1"),
    model: "Link",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3616"),
    count: NumberInt("1"),
    model: "Tag",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec3619"),
    count: NumberInt("1"),
    model: "TimeAxis",
    field: "id",
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b25cb1880c33e20ec361a"),
    count: NumberInt("1"),
    model: "Project",
    field: "id",
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for links
// ----------------------------
db.getCollection("links").drop();
db.createCollection("links");
db.getCollection("links").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of links
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("links").insert([ {
    _id: ObjectId("5d0b3aa76252e43ce4b260c7"),
    desc: "博主项目 github 地址",
    url: "https://github.com/Joliven/jinbang-pureBackend",
    icon: "https://vivi98.top/%E9%A1%B9%E7%9B%AE/%E8%AF%95%E5%8D%B7.png",
    type: NumberInt("2"),
    state: NumberInt("1"),
    name: "金榜试题系统",
    "create_time": ISODate("2019-06-20T07:49:59.211Z"),
    "update_time": ISODate("2019-06-20T07:49:59.211Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for messages
// ----------------------------
db.getCollection("messages").drop();
db.createCollection("messages");
db.getCollection("messages").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of messages
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("messages").insert([ {
    _id: ObjectId("5d0b48496252e43ce4b260cb"),
    "user_id": "5d0b47296252e43ce4b260ca",
    name: "Yun Moxian",
    avatar: "https://vivi98.top/Joliven/dog.jpg",
    phone: "176****9915",
    introduce: "I am Yun Moxian.",
    email: "yunmoxiann@126.com",
    state: NumberInt("1"),
    content: "博主写得太好了吧，可以加个微信吗？有意请回复哦",
    "reply_list": [
        {
            _id: ObjectId("5d0b49346252e43ce4b260cc"),
            content: "感谢喜欢，我微信已发您邮箱"
        }
    ],
    "create_time": ISODate("2019-06-20T08:48:09.471Z"),
    "update_time": ISODate("2019-06-20T08:48:09.471Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for projects
// ----------------------------
db.getCollection("projects").drop();
db.createCollection("projects");
db.getCollection("projects").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of projects
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("projects").insert([ {
    _id: ObjectId("5d0b3fa06252e43ce4b260c9"),
    state: NumberInt("1"),
    title: "基于特征提取的人间检测算法",
    content: "通过 Haar-Like 特征提取，进行人脸检测，项目代码基于 Python.",
    img: "https://vivi98.top/项目/EFaceDetection.PNG",
    url: "https://github.com/Joliven/FaceDetection",
    "start_time": ISODate("2018-01-15T04:31:00.000Z"),
    "end_time": ISODate("2018-04-15T04:31:00.000Z"),
    "update_time": ISODate("2019-06-20T08:11:12.776Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for tags
// ----------------------------
db.getCollection("tags").drop();
db.createCollection("tags");
db.getCollection("tags").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of tags
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("tags").insert([ {
    _id: ObjectId("5d0b374f6252e43ce4b260c5"),
    name: "logo",
    desc: "博主标识",
    "create_time": ISODate("2019-06-20T07:35:43.387Z"),
    "update_time": ISODate("2019-06-20T07:35:43.387Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for timeaxes
// ----------------------------
db.getCollection("timeaxes").drop();
db.createCollection("timeaxes");
db.getCollection("timeaxes").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of timeaxes
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("timeaxes").insert([ {
    _id: ObjectId("5d0b600200e6403370579c0a"),
    state: NumberInt("2"),
    title: "开发 Yun-Blog",
    content: "2019年夏季学期小组合力开发 Yun-Blog 项目",
    "start_time": ISODate("2019-06-17T02:10:00.000Z"),
    "end_time": null,
    "update_time": ISODate("2019-06-20T10:29:22.102Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();

// ----------------------------
// Collection structure for users
// ----------------------------
db.getCollection("users").drop();
db.createCollection("users");
db.getCollection("users").createIndex({
    id: NumberInt("1")
}, {
    name: "id_1",
    background: true,
    unique: true
});

// ----------------------------
// Documents of users
// ----------------------------
session = db.getMongo().startSession();
session.startTransaction();
db = session.getDatabase("yun-blog");
db.getCollection("users").insert([ {
    _id: ObjectId("5d0b29a31880c33e20ec361b"),
    "github_id": "",
    name: "Joliven",
    type: NumberInt("0"),
    phone: "176****9915",
    "img_url": "https://vivi98.top/%E5%8D%B0%E7%AB%A0/%E7%99%BD%E4%BA%91%E8%8E%AB%E9%97%B2/baiyunmoxian.png",
    email: "joliven_d@qq.com",
    introduce: "I am Joliven.",
    avatar: "https://vivi98.top/%E5%8D%B0%E7%AB%A0/%E7%99%BD%E4%BA%91%E8%8E%AB%E9%97%B2/baiyunmoxian.png",
    location: "Shanghai",
    password: "7e00289d395e4bec354e7f6f83ae0808",
    "create_time": ISODate("2019-06-20T06:37:23.919Z"),
    "update_time": ISODate("2019-06-20T06:37:23.919Z"),
    id: NumberInt("1"),
    __v: NumberInt("0")
}, {
    _id: ObjectId("5d0b47296252e43ce4b260ca"),
    "github_id": "",
    name: "Yun Moxian",
    type: NumberInt("1"),
    phone: "176****9915",
    "img_url": "https://vivi98.top/Joliven/dog.jpg",
    email: "yunmoxian@126.com",
    introduce: "I am Yun Moxian.",
    avatar: "https://vivi98.top/Joliven/dog.jpg",
    location: "Shanghai",
    password: "cd6519b908e66e7f06d2691f1791c830",
    "create_time": ISODate("2019-06-20T08:43:21.791Z"),
    "update_time": ISODate("2019-06-20T08:43:21.791Z"),
    id: NumberInt("2"),
    __v: NumberInt("0")
} ]);
session.commitTransaction(); session.endSession();
