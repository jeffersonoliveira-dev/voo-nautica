# voo-nautica

 Website built in Ruby on Rails.



## To deploy at Heroku:
> Note: [Check heroku guide](https://devcenter.heroku.com/articles/getting-started-with-ruby#set-up).

## Clone Repository:
```
git clone https://github.com/Cardbeat/voo-nautica.git.
```
## Install gems with bundler:

```
cd voo-nautica
bundle install
```

## Login to your heroku account:
```
heroku login
```

> See more how heroku with git works at [deploying with git...](https://devcenter.heroku.com/articles/git)

## Adding remote with git :
```
heroku git:remote -a voo-nautica
```

## Deployment:
```
git push heroku master
```
