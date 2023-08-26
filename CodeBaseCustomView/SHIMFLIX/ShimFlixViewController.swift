//
//  ShimFlixViewController.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit
import SnapKit

class ShimFlixViewController: UIViewController {
    
    let backgroundPosterImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "어벤져스엔드게임")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let gradationBackground = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let refreshButton = {
        let button = UIButton()
        button.setTitle("N", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 55, weight: .heavy)
        return button
    }()
    
    let tvSeriesButton = {
        let view = CategoryCustomButton()
        view.setTitle("TV 프로그램", for: .normal)
        return view
    }()
    
    let movieButton = {
        let view = CategoryCustomButton()
        view.setTitle("영화", for: .normal)
        return view
    }()
    
    let myFavoriteButton = {
        let view = CategoryCustomButton()
        view.setTitle("내가 찜한 목록", for: .normal)
        return view
    }()
    
    let favoriteContentButton = CustomButton()
    
    let playButton = PlayButtonCustomView()
    
    let infoButton = InfoButtonCustomView()
    
//    let randomMoviePoster = RandomImageCustomView(frame: .zero)
    
    //MARK: - 이것도 lazy var로 선언해서 해보자
    lazy var randomMoviePosterColletionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout())
        view.delegate = self
        view.dataSource = self
        view.register(RandomMoviePosterCollectionViewCell.self, forCellWithReuseIdentifier: "RandomMoviePosterCollectionViewCell")
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        view.addSubview(backgroundPosterImageView)
        backgroundPosterImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().inset(100)
        }
        
        view.addSubview(gradationBackground)
        gradationBackground.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        view.addSubview(refreshButton)
        refreshButton.addTarget(self, action: #selector(refreschScreen), for: .touchUpInside)
        refreshButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(8)
            make.size.equalTo(60)
        }
        
        view.addSubview(tvSeriesButton)
        tvSeriesButton.snp.makeConstraints { make in
            make.centerY.equalTo(refreshButton)
            make.leading.equalTo(refreshButton.snp.trailing).offset(20)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        view.addSubview(movieButton)
        movieButton.snp.makeConstraints { make in
            make.centerY.equalTo(refreshButton)
            make.leading.equalTo(tvSeriesButton.snp.trailing).offset(12)
            make.height.equalTo(30)
            make.width.equalTo(60)
        }
        
        view.addSubview(myFavoriteButton)
        myFavoriteButton.snp.makeConstraints { make in
            make.centerY.equalTo(refreshButton)
            make.leading.equalTo(movieButton.snp.trailing).offset(12)
            make.trailing.equalToSuperview().inset(8)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        view.addSubview(playButton)
        playButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(160)
            make.centerX.equalToSuperview()
            make.width.equalTo(80)
            make.height.equalTo(44)
        }
        
        view.addSubview(favoriteContentButton)
        favoriteContentButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton).offset(5)
            make.trailing.equalTo(playButton.snp.leading).offset(-20)
        }
        
        view.addSubview(infoButton)
        infoButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton).offset(5)
            make.leading.equalTo(playButton.snp.trailing).offset(38)
        }
        
//        view.addSubview(randomMoviePoster)
//        //        randomMoviePoster.image =
//        randomMoviePoster.snp.makeConstraints { make in
//            make.size.equalTo(150)
//            make.center.equalToSuperview()
//        }
        
        view.addSubview(randomMoviePosterColletionView)
        randomMoviePosterColletionView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.top.equalTo(playButton.snp.bottom).offset(8)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    @objc func refreschScreen() {
        print("스크린 리프레쉬")
    }
    
    func collectionViewFlowLayout() -> UICollectionViewFlowLayout  {
        let layout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width / 3.2
        
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = UIEdgeInsets(top: 4, left: 4, bottom: 0, right: 4)
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
        layout.scrollDirection = .horizontal
        
        //MARK: - 리유저블뷰로 섹션헤더 크기 잡기
        
        return layout
    }
}

extension ShimFlixViewController: UICollectionViewDelegate {
    
}

extension ShimFlixViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RandomMoviePosterCollectionViewCell", for: indexPath)
        //MARK: - 플로우 레이아웃 잡아야함.
        return cell
    }
    
    
}
