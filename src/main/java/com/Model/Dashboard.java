package com.Model;




public class Dashboard {
    private String name;
    private String email;
    private int posts;
    private int views;
    private int likes;
    private int comments;
    private String notification;
    private int streak;

    public Dashboard(String name, String email, int posts, int views, int likes, int comments, String notification, int streak) {
        this.name = name;
        this.email = email;
        this.posts = posts;
        this.views = views;
        this.likes = likes;
        this.comments = comments;
        this.notification = notification;
        this.streak = streak;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email)
    {
    this.email = email;	
    }

    public int getPosts() {
        return posts;
    }

    public int getViews() {
        return views;
    }

    public int getLikes() {
        return likes;
    }

    public int getComments() {
        return comments;
    }

    public String getNotification() {
        return notification;
    }

    public int getStreak() {
        return streak;
    }
}
