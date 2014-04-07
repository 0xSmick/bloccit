class FavoriteMailer < ActionMailer::Base
  default from: "sheldon.smickley@gmail.com"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    # New Headers
    headers["Message-ID"] = "<comments/#{@comment.id}@shreddit>"
    headers["In-Reply-To"] = "<post/#{@post.id}@shreddit>"
    headers["References"] = "<post/#{@post.id}@shreddit>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
