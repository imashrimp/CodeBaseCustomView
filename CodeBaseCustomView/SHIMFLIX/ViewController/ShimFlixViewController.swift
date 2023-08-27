//
//  ShimFlixViewController.swift
//  CodeBaseCustomView
//
//  Created by 권현석 on 2023/08/24.
//

import UIKit
import SnapKit

class ShimFlixViewController: UIViewController {
    
    let backgroundPosterImageView = BackgroundPoster(title: "어벤져스엔드게임")
    
    let gradationBackground = BackgroundPoster(title: "background")
    
    let refreshButton = LabelOnlyCustomButton(title: "N",
                                             fontSize: 55,
                                             fontWeight: .heavy)
    
    //=> 이거를 리터럴 값을 안 넣고 열거형으로 처리할 수 있을 듯?
    let tvSeriesButton = LabelOnlyCustomButton(title: "TV 프로그램",
                                              fontSize: 15,
                                              fontWeight: .bold)
    
    let movieButton = LabelOnlyCustomButton(title: "영화",
                                           fontSize: 15,
                                           fontWeight: .bold)
    
    let favoriteListButton = LabelOnlyCustomButton(title: "내가 찜한 목록",
                                                  fontSize: 15,
                                                  fontWeight: .bold)
    
    let favoriteContentButton = ImageAndLabelButtonCustomView(image: "checkmark",
                                                              title: "내가 찜한 컨텐츠")
    
    let playButton = PlayButtonCustomView()
    
    let infoButton = ImageAndLabelButtonCustomView(image: "info.circle",
                                                   title: "정보")
    
    let previewLabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.text = "미리보기"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
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
        
        [
            backgroundPosterImageView,
            gradationBackground,
            refreshButton,
            tvSeriesButton,
            movieButton,
            favoriteListButton,
            playButton,
            favoriteContentButton,
            infoButton,
            previewLabel,
            randomMoviePosterColletionView
        ].forEach {
            view.addSubview($0)
        }
        
        makeConstraints()
        
        refreshButton.addTarget(self, action: #selector(refreschScreen), for: .touchUpInside)
    }
    
    func collectionViewFlowLayout() -> UICollectionViewFlowLayout  {
        let layout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width / 3.2
        
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = UIEdgeInsets(top: 4, left: 4, bottom: 0, right: 4)
        layout.minimumLineSpacing = 8
        layout.minimumInteritemSpacing = 8
        layout.scrollDirection = .horizontal
        
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

extension ShimFlixViewController {
    
    func makeConstraints() {
        backgroundPosterImageView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().inset(100)
        }
        
        gradationBackground.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        refreshButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(8)
            make.size.equalTo(60)
        }
        
        tvSeriesButton.snp.makeConstraints { make in
            make.centerY.equalTo(refreshButton)
            make.leading.equalTo(refreshButton.snp.trailing).offset(20)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        movieButton.snp.makeConstraints { make in
            make.centerY.equalTo(refreshButton)
            make.leading.equalTo(tvSeriesButton.snp.trailing).offset(12)
            make.height.equalTo(30)
            make.width.equalTo(60)
        }
        
        favoriteListButton.snp.makeConstraints { make in
            make.centerY.equalTo(refreshButton)
            make.leading.equalTo(movieButton.snp.trailing).offset(12)
            make.trailing.equalToSuperview().inset(8)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        playButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(160)
            make.centerX.equalToSuperview()
            make.width.equalTo(80)
            make.height.equalTo(44)
        }
        
        favoriteContentButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton).offset(5)
            make.trailing.equalTo(playButton.snp.leading).offset(-20)
        }
        
        infoButton.snp.makeConstraints { make in
            make.centerY.equalTo(playButton).offset(5)
            make.leading.equalTo(playButton.snp.trailing).offset(38)
        }
        
        previewLabel.snp.makeConstraints { make in
            make.top.equalTo(favoriteContentButton.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(4)
        }
        
        randomMoviePosterColletionView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview()
            make.top.equalTo(previewLabel.snp.bottom).offset(8)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    @objc func refreschScreen() {
        print("스크린 리프레쉬")
    }
}
